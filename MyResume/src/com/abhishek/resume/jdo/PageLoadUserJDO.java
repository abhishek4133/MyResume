package com.abhishek.resume.jdo;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;
import javax.jdo.annotations.Unique;

import com.google.appengine.api.datastore.Key;

@PersistenceCapable
public class PageLoadUserJDO {

	
	@PrimaryKey
    @Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
    private Key key;
	
	@Unique
	@Persistent
	private String ip_address;
	
	@Persistent
	private String date;
	
	@Persistent
	private String longitude;
	
	@Persistent
	private String latitude;

	public Key getKey() {
		return key;
	}
	
	public void setKey(Key key) {
		this.key = key;
	}
	
	public String getIpAddress() {
		return ip_address;
	}

	public void setId(String ip_address) {
		this.ip_address = ip_address;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}
	
	public String getLongitude() {
		return longitude;
	}

	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}

	public String getLatitude() {
		return latitude;
	}

	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}

}
