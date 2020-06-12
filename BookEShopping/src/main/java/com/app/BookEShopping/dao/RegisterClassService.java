package com.app.BookEShopping.dao;



import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;

import java.sql.Date;

import java.sql.DriverManager;

import java.sql.ResultSet;

import java.sql.SQLException;

import java.sql.Statement;

import java.util.ArrayList;

//import java.util.Date;

import java.util.List;
import java.util.Properties;
import java.util.Random;



import org.springframework.stereotype.Service;



@Service

public class RegisterClassService {

	

	

	public String LoginValidation(String userId,String password){

		String usercategory="";

		Connection conn=null;

		Statement mystmt = null;

		try{
			Properties prp = new Properties();
			prp.load(new FileInputStream("src/main/resources/connection.properties"));
			String dburl = prp.getProperty("DB_URL");
			String user = prp.getProperty("DB_USERNAME");
			String passw = prp.getProperty("DB_PASSWORD");
			conn = DriverManager.getConnection(dburl, user, passw);
			mystmt=conn.createStatement();

			//"select LastModified from CacheTable where url = '" + url +"'"

			ResultSet myRs=mystmt.executeQuery("select * from  logindetails where userId = '"+userId+"'");

			

			if((myRs.next())){

				String p=myRs.getString("pass");

				if(p.equals(password)){

					usercategory+=myRs.getString("userCategory");

					System.out.println(usercategory);

				}

			}
			conn.close();
			mystmt.close();

		}catch (SQLException e) {

			// TODO Auto-generated catch block

			e.printStackTrace();

		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return usercategory;

		

	}


	public void adddata(String firstName, String lastName, Date dob, String gender, String contactNo, String email,

			String userCategory, String userId, String password,String petname,String favteachername,String schoolname) {

		//RegisterClassService rsobj = new RegisterClassService();

		System.out.println(firstName);

		Connection conn=null;

		Statement mystmt = null;

		

		try {

			

			Properties prp = new Properties();
			prp.load(new FileInputStream("src/main/resources/connection.properties"));
			String dburl = prp.getProperty("DB_URL");
			String user = prp.getProperty("DB_USERNAME");
			String passw = prp.getProperty("DB_PASSWORD");
			conn = DriverManager.getConnection(dburl, user, passw);
			mystmt = conn.createStatement();

//			int ra = mystmt.executeUpdate("insert into logindetails"

//					+ "(firstName,lastName,dob,gender,contactNo,email,userCategory,userId,pass)" + 

//					"value"

//					+ "(firstName,lastName,dob,gender,contactNo,email,userCategory,userId,'hj')");

			

			mystmt.executeUpdate("INSERT INTO `logindetails`(firstName,lastName,dob,gender,contactNo,email,userCategory,userId,pass,petname,favteachername,schoolname) "

					+ "VALUE ('"+firstName+"','"+lastName+"','"+dob+"','"+gender+"','"+contactNo+"','"+email+"','"+userCategory+"','"+userId+"','"+password+

					"','"+petname+"','"+favteachername+"','"+schoolname+"')");

			//("INSERT INTO `time_entry`(pid,tid,rid,tspend,description) VALUE ('"+pid+"','"+tid+"','"+rid+"',"+tspent+",'"+des+"')");
			conn.close();
			mystmt.close();

		} catch (SQLException e) {

			// TODO Auto-generated catch block

			e.printStackTrace();

		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}



	}

	



	public String generateuserId() {

		Random n = new Random();

		int ui = (int) (n.nextDouble() * 1000000);



		String userid = Integer.toString(ui);

		return userid;

	}





	public boolean updatepassword(String userid,String petname,String favteachername,String schoolname,String pass) throws ClassNotFoundException {

		// TODO Auto-generated method stub

		Connection conn=null;

		Statement mystmt = null;


		try{

			//Class.forName("com.mysql.jdbc.Driver");
			Properties prp = new Properties();
			prp.load(new FileInputStream("src/main/resources/connection.properties"));
			String dburl = prp.getProperty("DB_URL");
			String user = prp.getProperty("DB_USERNAME");
			String passw = prp.getProperty("DB_PASSWORD");
			conn = DriverManager.getConnection(dburl, user, passw);

			mystmt=conn.createStatement();

			//"select LastModified from CacheTable where url = '" + url +"'"

			ResultSet myRs=mystmt.executeQuery("select * from  logindetails where userId = '"+userid+"'");

			if(myRs.next()){

				mystmt.executeUpdate("update logindetails set pass = '"+pass+"'"+"where userId = '"+userid+"'");

				return true;

			}

			

		}catch (SQLException e) {

			// TODO Auto-generated catch block

			e.printStackTrace();

		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return false;

	}





	public String returnuserid(String number, String petname, String favteachername, String schoolname, String email) {

		// TODO Auto-generated method stub

		

		Connection conn=null;

		Statement mystmt = null;

		

		try{

			//Class.forName("com.mysql.jdbc.Driver");

			Properties prp = new Properties();
			prp.load(new FileInputStream("src/main/resources/connection.properties"));
			String dburl = prp.getProperty("DB_URL");
			String user = prp.getProperty("DB_USERNAME");
			String passw = prp.getProperty("DB_PASSWORD");
			conn = DriverManager.getConnection(dburl, user, passw);
			mystmt=conn.createStatement();

			ResultSet myRs=mystmt.executeQuery("select * from  logindetails where contactNo = '"+number+"'");

			while(myRs.next()){

				if((myRs.getString("petname")).equals(petname)){

					if((myRs.getString("favteachername")).equals(favteachername)){

						if((myRs.getString("email")).equals(email)){

							return (myRs.getString("userId"));

						}

					}

				}

			}
			conn.close();
			mystmt.close();

			return "wrong";

			

		}catch (SQLException e) {

			// TODO Auto-generated catch block

			e.printStackTrace();

		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "wrong";

	}





}
