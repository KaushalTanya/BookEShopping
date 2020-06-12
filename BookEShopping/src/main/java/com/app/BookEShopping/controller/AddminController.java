package com.app.BookEShopping.controller;



import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
				bookdetails.getBuyingoption(), bookdetails.getBookrate(),bookdetails.getDiscount(),bookdetails.getNoofcopiesavailable(),bookdetails.getNoofcopiessold(),bookdetails.getNoofcopiesreturned());
		model.put("msg", "BOOK DETAILS ADDED SUCCESSFULLY");
		return "addresoures";
	}
	
	@RequestMapping(value = "/showbookdetails", method = RequestMethod.GET)
	public String showBookDetails(@ModelAttribute("bookdetails") BookDetails bookdetails, ModelMap model,
			BindingResult result) {
		
	 return "showbookdetails";
	}

	@RequestMapping(value = "/showbook", method = RequestMethod.GET)
	public String updatebookdetails(@RequestParam String bookcode, ModelMap model) {
		BookDetailsdao dao=new BookDetailsdao();
		BookDetails book=dao.searchbookbycode(bookcode);
		model.put("bookcode", bookcode);
		model.put("rate", book.getBookrate());
		model.put("dis", book.getDiscount());
		model.put("available", book.getNoofcopiesavailable());
		model.put("return", book.getNoofcopiesreturned());
		
	 return "updatebook";
	}
	
	// /
	@RequestMapping(value = "/updatebookdetails", method = RequestMethod.POST)
	public String bookupdated(@RequestParam String bookcode,@RequestParam String rate,@RequestParam String dis,@RequestParam String available,
			@RequestParam String returned, ModelMap model) {
		// String u=service.generateuserId();
		BookDetailsdao service=new BookDetailsdao();
		service.bookupdate(bookcode,rate,dis,available,returned);
		model.put("msg", "BOOK DETAILS UPDATED SUCCESSFULLY");
		return "updatebook";
	}
	// /
	@RequestMapping(value = "/seeallordersinadmin", method = RequestMethod.GET)
	public String seeallordersplaces( ModelMap model) {
		
	 return "seeallordersinadmin";
	}
	
	@RequestMapping(value="/updatestatus",method=RequestMethod.GET)
	public String updatestatus(@RequestParam String status,ModelMap model){
		
		String[] s=status.split(",");
		model.put("status",s[0]);
		model.put("bookname",s[1]);
		model.put("userid",s[2]);
		return "updatestatus";
	}
	// /
	@RequestMapping(value="/updatetrack",method=RequestMethod.POST)
	public String updatetrack(@RequestParam String userid,@RequestParam String name,@RequestParam String status,ModelMap model){
		BookDetailsdao dao=new BookDetailsdao();
		dao.updatestatus(userid,name,status);
		model.put("msg","updated");
		return "updatestatus";
	}
	

	
	
	
	
	
	

}