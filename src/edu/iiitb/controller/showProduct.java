package edu.iiitb.controller;

import edu.iiitb.database.DB;
import edu.iiitb.model.Product;

public class showProduct {
	int productId;
	Product product;
	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}
	
/**
 * Author : Gaurav
 * The following function gets a particular product from database based on Product it 
 * along with all its attributes
 * @return
 * @throws Exception
 */
	public String execute() throws Exception {
		System.out.println("Product id is : " + productId);
		product=DB.getProduct(productId);
		product.setProductEAV(DB.getProductAttributes(productId));
		return "success";
	}
}
