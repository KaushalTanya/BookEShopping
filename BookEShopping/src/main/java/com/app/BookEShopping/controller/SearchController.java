package com.app.BookEShopping.controller;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.BookEShopping.BookDetails;
import com.app.BookEShopping.dao.AdvancedClassService;
import com.app.BookEShopping.dao.SearchClassService;

@Controller class SearchController 
{
@RequestMapping(value = "/searchbookform", method = RequestMethod.GET)
// @ResponseBody
public String showSearchBookFormPage() {
return "searchbookform";
}
@RequestMapping(value = "/searchbookform", method = RequestMethod.POST)
public String handleSearchBookFormPage(ModelMap model, @RequestParam String bookname, @RequestParam String author){

SearchClassService s=new SearchClassService();
List<BookDetails> category=s.SearchBook(bookname,author);
//System.out.println(category); 
model.put("list", category);
return "searchbookform";

}



@RequestMapping(value = "/advancedSearchBook", method = RequestMethod.GET)
// @ResponseBody
public String showAdvancedSearchBookPage() {
return "advancedSearchBook";
}
@RequestMapping(value = "/advancedSearchBook", method = RequestMethod.POST)
public String handleAdvancedSearchBookPage(ModelMap model, @RequestParam String category){

AdvancedClassService s=new AdvancedClassService();
List<BookDetails> category1=s.AdvancedSearchBook(category);
//System.out.println(category); 
model.put("list", category1);
return "advancedSearchBook";

}
}
