package com.assl.sm.manager;

import java.util.Date;

public class Service {
	private String serviceId;
	private String serviceName;
	private String serviceUrl;
	private String serviceOwner;
	private String description;
	private Date createDate;
	
	public String getServiceId() {
		return serviceId;
	}
	public void setServiceId(String serviceId) {
		this.serviceId = serviceId;
	}
	
	public String getServiceName() {
		return serviceName;
	}
	public void setServiceName(String serviceName) {
		this.serviceName = serviceName;
	}
	
	public String getServiceUrl() {
		return serviceUrl;
	}
	public void setServiceUrl(String serviceUrl) {
		this.serviceUrl = serviceUrl;
	}
	
	public String getServiceOwner() {
		return serviceOwner;
	}
	public void setServiceOwner(String serviceOwner) {
		this.serviceOwner = serviceOwner;
	}
	
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
}
