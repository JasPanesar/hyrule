﻿component persistent="true" extends="coldmvc.Model" {
	
	property name="id" column="category_id" fieldtype="id" generator="native";
	
	/**
	 * @blank false
	 */
	property name="name";
	
	/**
	 * @Numeric
	 */
	property name="sort" ormtype="int";
	
	property name="products" fieldtype="many-to-many" cfc="hyrule.samples.frameworks.coldmvc.app.model.Product" linktable="product_categories" 
			 fkcolumn="category_id" inversejoincolumn="product_id" lazy="true" cascade="all" singularname="product" inverse="true";

}