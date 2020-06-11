package com.app.BookEShopping.controller;



import org.springframework.stereotype.Controller;

import org.springframework.ui.ModelMap;

import org.springframework.web.bind.annotation.RequestMapping;

//import org.springframework.web.bind.annotation.ResponseBody;

import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.bind.annotation.RequestParam;

import com.app.BookEShopping.dao.RegisterClassService;



@Controller

public class LoginController {

	@RequestMapping(value = "/login", method = RequestMethod.GET)

	// @ResponseBody

	public String showLoginPage() {

		return "login";

	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)

	public String handleLoginPage(ModelMap model, @RequestParam String userid, @RequestParam String pswrd){

		

		RegisterClassService service=new RegisterClassService();

		String category=service.LoginValidation(userid,pswrd);

		System.out.println(category);

		if(category.equals("customer")){
			model.put("userid", userid);

			return "customerfirstpage";

		}

		else if(category.equals("admin")){

			return "adminfirstpage";

		}

		else{

			model.put("errorMessage", "Invalid Credentials");

			return "login";

		}

		



		

		

	}

	@RequestMapping(value = "/forgotpassword", method = RequestMethod.GET)

	public String showforgotpassword(){

		return "forgotpassword";

	}

	@RequestMapping(value = "/forgotpassword", method = RequestMethod.POST )

	public String updateforpassword(@RequestParam String userid, @RequestParam String petname,@RequestParam String favteachername, @RequestParam String schoolname, @RequestParam String pass){

		RegisterClassService cs=new RegisterClassService();

		if((cs.updatepassword(userid, petname, favteachername, schoolname,pass))==true){

			return "updated";

		}

		return "notexist";

	}

	@RequestMapping(value = "/forgotuserid", method = RequestMethod.GET)

	public String showforgotuserid(){

		return "forgotuserid";

	}

	@RequestMapping(value = "/forgotuserid", method = RequestMethod.POST )

	public String displayuserid(ModelMap model, @RequestParam String number, @RequestParam String petname,@RequestParam String favteachername, @RequestParam String schoolname, @RequestParam String email){

		RegisterClassService rcs=new RegisterClassService();

		String userid=rcs.returnuserid(number, petname, favteachername, schoolname,email);

		if(userid=="wrong"){

			model.put("id","wrong data entered");

		}

		else{

			model.put("id",userid);

		}

		return "forgotuserid";

	}

	

}
