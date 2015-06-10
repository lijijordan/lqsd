package com.lqsd.convert;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.core.convert.converter.Converter;

import com.lqsd.entity.Site;

public class StringToSiteConverter implements Converter<String, Site> {

	private static final Logger log = Logger.getLogger(StringToSiteConverter.class);

	@Override
	public Site convert(String source) {
		log.info("site convert...");
		Site site = null;
		log.info("source " + source);
		if (StringUtils.isNotEmpty(source)) {
			site = new Site();
			site.setId(source);
		}
		return site;
	}
}
