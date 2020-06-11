package com.app.BookEShopping.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class BookDetailsdao {
	
	public String sendbookpriceaddtocart(String bookname){
		double price=0.0;
		
		String data="";
		Connection conn=null;

		Statement mystmt = null;

		String dburl = "jdbc:mysql://localhost:3306/bookshopping?useSSL=false";

		String user = "root";

		String pass = "root";
		try{
			conn = DriverManager.getConnection(dburl, user, pass);
			mystmt=conn.createStatement();

			//"select LastModified from CacheTable where url = '" + url +"'"

			ResultSet myRs=mystmt.executeQuery("select * from  bookdetails where bookname = '"+bookname+"'");
			if(myRs.next()){
				double mrp=Integer.parseInt(myRs.getString("bookrate"));
				int dis=myRs.getInt("discount");
				price=(mrp*dis)/100;
				
				String quan=Integer.toString(myRs.getInt("noofcopiesavailable"));
				
				data+=Double.toString(price)+","+quan;
				
			}
			
			
			
			conn.close();
			mystmt.close();

		}catch (SQLException e) {

			// TODO Auto-generated catch block

			e.printStackTrace();

		}
		return data;

	}
	
	public void addtocartdatabase(String userid,String bookname,double bookprice,int quanity,String rentbuy,String deliveryAddress){
		
		Connection conn=null;

		Statement mystmt = null;

		String dburl = "jdbc:mysql://localhost:3306/bookshopping?useSSL=false";

		String user = "root";

		String pass = "root";
		try{
			conn = DriverManager.getConnection(dburl, user, pass);
			mystmt = conn.createStatement();
			

			mystmt.executeUpdate("INSERT INTO `addtocart`(userid,bookname,bookprice,quanity,rentbuy,deliveryAddress) "

					+ "VALUE ('"+userid+"','"+bookname+"','"+bookprice+"','"+quanity+"','"+rentbuy+"','"+deliveryAddress+"')");
			
			conn.close();
			mystmt.close();

			
		}catch (SQLException e) {

			// TODO Auto-generated catch block

			e.printStackTrace();

		}

		
	}
	
	public void addcarddetails(String bookname,String cardnumber,String cvv,Date expirydate){
		Connection conn=null;

		Statement mystmt = null;

		String dburl = "jdbc:mysql://localhost:3306/bookshopping?useSSL=false";

		String user = "root";

		String pass = "root";
		try{
			conn = DriverManager.getConnection(dburl, user, pass);
			mystmt = conn.createStatement();
			

			mystmt.executeUpdate("INSERT INTO `carddetails`(cardnumber,cvv,expirydate) "

					+ "VALUE ('"+cardnumber+"','"+cvv+"','"+expirydate+"')");
			
			conn.close();
			mystmt.close();
			
		}catch (SQLException e) {

			// TODO Auto-generated catch block

			e.printStackTrace();

		}

		
	}
	
	
		
		
	}


