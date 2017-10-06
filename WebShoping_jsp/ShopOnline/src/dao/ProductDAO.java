package dao;



import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


import connect.DBConnect;
import model.Product;

public class ProductDAO {

	public ArrayList<Product> getListProductByCategory(long categoryId) throws SQLException{
		Connection connection = DBConnect.getConnection();
		String query = "SELECT * FROM product WHERE category_id = ?";
		ArrayList<Product> list = new ArrayList<>();
		PreparedStatement ps = connection.prepareStatement(query);
		ps.setLong(1, categoryId);
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
			 Product product = new Product();
			 product.setProductID(rs.getLong("product_id"));
			 product.setProductName(rs.getString("product_name"));
	         product.setProductImage(rs.getString("product_image"));
	         product.setProductPrice(rs.getDouble("product_price"));
	         product.setProductDescription(rs.getString("product_description"));
	         list.add(product);
		}
		
		return list;
	}
	public Product getProductByID(long productId)throws SQLException{	
		Connection connection = DBConnect.getConnection();
		String query = "SELECT * FROM product WHERE product_id = ?";
		Product product = new Product();
		PreparedStatement ps = connection.prepareStatement(query);
		ps.setLong(1, productId);
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
			product.setProductID(rs.getLong("category_id"));
			product.setProductName(rs.getString("product_name"));
	        product.setProductImage(rs.getString("product_image"));
	        product.setProductPrice(rs.getDouble("product_price"));
	        product.setProductDescription(rs.getString("product_description"));
		}
		
		return product;
		
	}
/*	public static void main(String[] args) throws SQLException {
		ProductDAO dao =  new ProductDAO();
		Product p = new Product();
		p = dao.getProductByID(3);
		System.out.println(p.getProductName() + " - " + p.getProductPrice());
	}*/
}
