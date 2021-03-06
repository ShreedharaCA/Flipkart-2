package edu.iiitb.model;

import java.util.ArrayList;

/**
 * 
 * @author Gaurav
 * The following is a Model/Bean file for the Product Table
 * Contains an member productEAV which contains all attribute names and values for a particular product
 *
 */

public class Product {
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public ArrayList<ProductEAV> getProductEAV() {
		return productEAV;
	}
	public void setProductEAV(ArrayList<ProductEAV> productEAV) {
		this.productEAV = productEAV;
	}
	int productId;
	int categoryId;
	String productName;
	ArrayList<ProductEAV> productEAV;
}
