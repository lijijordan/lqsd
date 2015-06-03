package com.lqsd.dao.impl;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.HibernateException;
import org.hibernate.IdentifierLoadAccess;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.orm.ObjectRetrievalFailureException;

import com.lqsd.dao.GenericDao;

/**
 * This class serves as the Base class for all other DAOs - namely to hold
 * common CRUD methods that they might all use. You should only need to extend
 * this class when your require custom CRUD logic.
 * <p/>
 * <p>
 * To register this class in your Spring context file, use the following XML.
 * 
 * <pre>
 *      &lt;bean id="fooDao" class="com.mycompany.dao.hibernate.GenericDaoHibernate"&gt;
 *          &lt;constructor-arg value="com.mycompany.model.Foo"/&gt;
 *      &lt;/bean&gt;
 * </pre>
 * 
 * @author <a href="mailto:bwnoll@gmail.com">Bryan Noll</a> Updated by jgarcia:
 *         update hibernate3 to hibernate4
 * @author jgarcia (update: added full text search + reindexing)
 * @param <T>
 *            a type variable
 * @param <PK>
 *            the primary key for that type
 */
public class GenericDaoImpl<T, PK extends Serializable> implements
		GenericDao<T, PK> {
	/**
	 * Log variable for all child classes. Uses LogFactory.getLog(getClass())
	 * from Commons Logging
	 */
	protected final Log log = LogFactory.getLog(getClass());
	private Class<T> persistentClass;
	
	@Resource
	private SessionFactory sessionFactory;

	/**
	 * Constructor that takes in a class to see which type of entity to persist.
	 * Use this constructor when subclassing.
	 * 
	 * @param persistentClass
	 *            the class type you'd like to persist
	 */
	public GenericDaoImpl(final Class<T> persistentClass) {
		this.persistentClass = persistentClass;
	}

	/**
	 * Constructor that takes in a class and sessionFactory for easy creation of
	 * DAO.
	 * 
	 * @param persistentClass
	 *            the class type you'd like to persist
	 * @param sessionFactory
	 *            the pre-configured Hibernate SessionFactory
	 */
	public GenericDaoImpl(final Class<T> persistentClass,
			SessionFactory sessionFactory) {
		this.persistentClass = persistentClass;
		this.sessionFactory = sessionFactory;
	}

	public SessionFactory getSessionFactory() {
		return this.sessionFactory;
	}

	public Session getSession() throws HibernateException {
		Session sess = null;
		try {
			sess = getSessionFactory().getCurrentSession();
		} catch (Exception e) {
			log.info(e);
		}
		if (sess == null) {
			sess = getSessionFactory().openSession();
		}
		return sess;
	}

	@Autowired
	@Required
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	/**
	 * {@inheritDoc}
	 */
	@SuppressWarnings("unchecked")
	public List<T> getAll() {
		Session sess = getSession();
		return sess.createCriteria(persistentClass).list();
	}

	/**
	 * {@inheritDoc}
	 */
	public List<T> getAllDistinct() {
		Collection<T> result = new LinkedHashSet<T>(getAll());
		return new ArrayList<T>(result);
	}

	/**
	 * {@inheritDoc}
	 */
	@SuppressWarnings("unchecked")
	public T get(PK id) {
		Session sess = getSession();
		IdentifierLoadAccess byId = sess.byId(persistentClass);
		T entity = (T) byId.load(id);

		if (entity == null) {
			log.warn("Uh oh, '" + this.persistentClass + "' object with id '"
					+ id + "' not found...");
			throw new ObjectRetrievalFailureException(this.persistentClass, id);
		}

		return entity;
	}

	/**
	 * {@inheritDoc}
	 */
	@SuppressWarnings("unchecked")
	public boolean exists(PK id) {
		Session sess = getSession();
		IdentifierLoadAccess byId = sess.byId(persistentClass);
		T entity = (T) byId.load(id);
		return entity != null;
	}

	/**
	 * {@inheritDoc}
	 */
	@SuppressWarnings("unchecked")
	public T save(T object) {
		Session sess = getSession();
		return (T) sess.merge(object);
	}

	public void saveOrUpdate(T object) {
		Session sess = getSession();
		sess.saveOrUpdate(object);
	}

	/**
	 * {@inheritDoc}
	 */
	public void remove(T object) {
		Session sess = getSession();
		sess.delete(object);
	}

	/**
	 * {@inheritDoc}
	 */
	public void remove(PK id) {
		Session sess = getSession();
		IdentifierLoadAccess byId = sess.byId(persistentClass);
		@SuppressWarnings("unchecked")
		T entity = (T) byId.load(id);
		sess.delete(entity);
	}

	/**
	 * {@inheritDoc}
	 */
	@SuppressWarnings("unchecked")
	public List<T> findByNamedQuery(String queryName, Map<String, Object> queryParams) {
		Set<String> set = queryParams.keySet();
		Query query = this.getSession().createQuery(queryName);
		for (String key : set) {
			query.setParameter(key, queryParams.get(key));
		}
		return query.list();
	}
	
	/**
	 * {@inheritDoc}
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<T> findByNamedQuery(Map<String, Object> queryParams) {
		Set<String> set = queryParams.keySet();
		StringBuffer sb = new StringBuffer(" from " + this.persistentClass.getName());
		if(queryParams.size() > 0){
			sb.append(" where ");
		}
		for (String key : set) {
			sb.append(key).append(" = :" + key).append(" and ");
		}
		String str = sb.substring(0, sb.length() - 5);
		System.out.println(str);
		Query query = this.getSession().createQuery(str);
		for (String key : set) {
			query.setParameter(key, queryParams.get(key));
		}
		return query.list();
	}

	@Override
	public Number count(Class<T> entity) {
		return (Number) getSession().createCriteria(entity)
				.setProjection(Projections.rowCount()).uniqueResult();
	}
}
