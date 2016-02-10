package com.assl.sm.data;

import java.util.List;

import org.springframework.orm.ibatis.support.*;

import com.assl.sm.manager.Service;

@SuppressWarnings({ "unchecked" })
public class ServiceDAO extends SqlMapClientDaoSupport {
	
	public Service getService(String serviceId) throws Exception {
		Service serviceFound = (Service) getSqlMapClientTemplate().
						queryForObject("service.getService", serviceId);
		return serviceFound;
	}

	public List<Service> searchService(String serviceId) throws Exception {
		List<Service> servicesFound = getSqlMapClientTemplate().
						queryForList("service.searchServices", serviceId);
		return servicesFound;
	}
	
}
