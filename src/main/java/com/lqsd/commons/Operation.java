package com.lqsd.commons;

import java.util.List;

public class Operation{
		private int id;
		private String url;
		private String name;
		private String image;
		private Operation parent;
		private List<Operation> children;
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getUrl() {
			return url;
		}
		public void setUrl(String url) {
			this.url = url;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getImage() {
			return image;
		}
		public void setImage(String image) {
			this.image = image;
		}
		public Operation getParent() {
			return parent;
		}
		public void setParent(Operation parent) {
			this.parent = parent;
		}
		public List<Operation> getChildren() {
			return children;
		}
		public void setChildren(List<Operation> children) {
			this.children = children;
		}
		
		
	}