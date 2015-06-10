package com.lqsd.convert;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.core.convert.converter.Converter;

import com.lqsd.entity.Staff;

public class StringToStaffConverter implements Converter<String, Staff> {

	private static final Logger log = Logger.getLogger(StringToStaffConverter.class);

	/*
	 * @Autowired private StoreService storeService;
	 */

	@Override
	public Staff convert(String source) {
		log.info("staff convert...");
		Staff staff = null;
		log.info("source " + source);
		if (StringUtils.isNotEmpty(source)) {
			staff = new Staff();
			staff.setId(source);
		}
		return staff;
	}
}
