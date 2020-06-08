package com.app.BookEShopping;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class CustomerController 
{
//@RequestMapping(value="/customerfirstpage", method = RequestMethod.GET)
//public String showcustomerfirstPage(ModelMap model){
////model.put("name", name);
//return "customerfirstpage";
//}

@RequestMapping(value="/resourceList", method = RequestMethod.POST)
public String showResourceListPage(ModelMap model){
//model.put("name", name);
return "resourceList";
}
}
