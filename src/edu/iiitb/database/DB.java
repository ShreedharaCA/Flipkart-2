package edu.iiitb.database;

import java.sql.ResultSet;
import java.util.ArrayList;

import edu.iiitb.dbconfig.DBConnection;
import edu.iiitb.model.Product;
import edu.iiitb.model.ProductEAV;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

/**
 * 
 * @author Gaurav 
 * The following class contains set of functions that deals with
 * fetching data from database and writing to it.
 */
public class DB {

	/**
	 * @author Gaurav 
	 * The following function get the list of all the products
	 * from the database their values as per Product Table in Database
	 * 
	 * @return
	 */
	public static ArrayList<Product> getProducts() {
		Connection con;
		try {
			con = DBConnection.getDBConnection();
			String query = "select * from product";
			PreparedStatement ps = (PreparedStatement) con
					.prepareStatement(query);
			ResultSet resultSet = ps.executeQuery();
			ArrayList<Product> products = new ArrayList<Product>();
			while (resultSet.next()) {
				Product product = new Product();
				product.setProductId(resultSet.getInt("productid"));
				product.setCategoryId(resultSet.getInt("categoryid"));
				product.setProductName(resultSet.getString("productname"));
				products.add(product);
			}
			con.close();
			return products;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * @author Gaurav 
	 * The following function receives a product ID as input and fetches all the attributes for that
	 * product and returns a product attribute collection as output
	 * 
	 * @param productId
	 * @return
	 */
	public static ArrayList<ProductEAV> getProductAttributes(int productId) {
		Connection con;
		try {
			con = DBConnection.getDBConnection();
			String query = "select * from producteav,attributes where productid=? and "
					+ "producteav.attributeid=attributes.attributeid";
			PreparedStatement ps = (PreparedStatement) con
					.prepareStatement(query);
			ps.setInt(1, productId);
			ResultSet resultSet = ps.executeQuery();
			ArrayList<ProductEAV> productAttributes = new ArrayList<ProductEAV>();
			while (resultSet.next()) {
				ProductEAV producteav = new ProductEAV();
				producteav.setAttributeName(resultSet
						.getString("attributename"));
				producteav.setAttributeValue(resultSet
						.getString("attributevalue"));
				productAttributes.add(producteav);
			}
			con.close();
			return productAttributes;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;

	}

	/**
	 * @author Gaurav 
	 * The following function receives a product ID as input and the general details of that product.
	 * 
	 * @param productId
	 * @return
	 */
	public static Product getProduct(int productId) {
		Connection con;
		try {
			con = DBConnection.getDBConnection();
			String query = "select * from product where productid=?";
			PreparedStatement ps = (PreparedStatement) con
					.prepareStatement(query);
			ps.setInt(1, productId);
			ResultSet resultSet = ps.executeQuery();
			Product product = null;
			if (resultSet.next()) {
				product = new Product();
				product.setProductId(resultSet.getInt("productid"));
				product.setCategoryId(resultSet.getInt("categoryid"));
				product.setProductName(resultSet.getString("productname"));
			}
			con.close();
			return product;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
