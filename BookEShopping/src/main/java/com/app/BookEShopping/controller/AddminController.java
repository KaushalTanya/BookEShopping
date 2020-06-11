package com.app.BookEShopping.controller;



import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.app.BookEShopping.BookDetails;
import com.app.BookEShopping.dao.BookDetailsdao;

@Controller
public class AddminController {
	
	
	@RequestMapping(value = "/addresoures", method = RequestMethod.GET)
	public String showadminfirstPage(@ModelAttribute("bookdetails") BookDetails bookdetails, ModelMap model)
	{
		bookdetails = new BookDetails();
		return "addresoures";
	}


	@RequestMapping(value = "/addbookdetails", method = RequestMethod.POST)
	public String addbookPage(@ModelAttribute("bookdetails") BookDetails bookdetails, ModelMap model,
			BindingResult result) {
		// String u=service.generateuserId();
		BookDetailsdao service=new BookDetailsdao();
				System.out.println("inside this add book");
		service.addbookdata(bookdetails.getBookName(),bookdetails.getBookCode(), bookdetails.getBookDesc(),
				bookdetails.getAuthor(), bookdetails.getBookcategory(), bookdetails.getBooktype(),
				bookdetails.getBuyingoption(), bookdetails.getBookrate(),bookdetails.getDiscount(),bookdetails.getNoofcopiesavailable());
		model.put("msg", "BOOK DETAILS ADDED SUCCESSFULLY");
		return "addresoures";
	}
	
	
	
	
	

}