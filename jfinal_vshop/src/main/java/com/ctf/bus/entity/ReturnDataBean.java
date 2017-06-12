package com.ctf.bus.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class ReturnDataBean implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer status;
	private List data = new ArrayList();
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public List getData() {
		return data;
	}
	public void setData(List data) {
		this.data = data;
	}
	
	

}
