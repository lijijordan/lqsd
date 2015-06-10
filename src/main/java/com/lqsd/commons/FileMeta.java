package com.lqsd.commons;

import org.codehaus.jackson.annotate.JsonIgnoreProperties;

//ignore "bytes" when return json format
@JsonIgnoreProperties({ "bytes" })
public class FileMeta {

	private String name;
	private String url;
	private String size;
	private String thumbnailUrl;
	private String type;

	private byte[] bytes;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public String getThumbnailUrl() {
		return thumbnailUrl;
	}

	public void setThumbnailUrl(String thumbnailUrl) {
		this.thumbnailUrl = thumbnailUrl;
	}

	public byte[] getBytes() {
		return bytes;
	}

	public void setBytes(byte[] bytes) {
		this.bytes = bytes;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	
	
}