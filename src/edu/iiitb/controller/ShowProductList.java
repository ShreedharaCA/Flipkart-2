package edu.iiitb.controller;

import java.util.ArrayList;

import edu.iiitb.database.DB;
import edu.iiitb.model.Product;

public class ShowProductList {
	static int count;
	ArrayList<Product> products;

	public ArrayList<Product> getProducts() {
		return products;
	}

	public void setProducts(ArrayList<Product> products) {
		this.products = products;
	}

	/**
	 * Author : Gaurav
	 * The following function gets all the products from the database along with all their attributes.
	 * @return
	 * @throws Exception
	 */
	public String execute() throws Exception {
		products = new ArrayList<Product>();
		products=DB.getProducts();
		count++;
		System.out.println("I'm here" + count);
		for(int i=0;i<products.size();i++)
		{
			products.get(i).setProductEAV(DB.getProductAttributes(products.get(i).getProductId()));
		}
		return "success";
	}
}
