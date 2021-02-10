package com.store.controller.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.store.model.Address;
import com.store.model.Cart;
import com.store.model.Order;
import com.store.model.Product;
import com.store.model.User;
import com.store.services.AddressService;
import com.store.services.CartService;
import com.store.services.OrderService;
import com.store.services.ProductService;
import com.store.services.UserService;

@Controller

public class MainWebController
{
	  
	   @RequestMapping("/about")
	   public String about() 
	   {
	       return "/user/about";
	   }
	   
	   

	   @Autowired
	   private UserService userService;
	   
	   @Autowired
	   private CartService cartService;
	   
	   @Autowired
	   private OrderService orderService;
	   
	   @Autowired
	   private AddressService addressService;
	   
	   @RequestMapping(value= {"/", "/login"}, method=RequestMethod.GET)
	   public ModelAndView login() {
	    ModelAndView model = new ModelAndView();
	    
	    model.setViewName("login");
	    return model;
	   }
	   
	   @RequestMapping(value= {"/signup"}, method=RequestMethod.GET)
	   public ModelAndView signup() {
	    ModelAndView model = new ModelAndView();
	    User user = new User();
	    model.addObject("user", user);
	    model.setViewName("signup");
	    
	    return model;
	   }
	   
	   @RequestMapping(value= {"/signup"}, method=RequestMethod.POST)
	   public ModelAndView createUser( User user, BindingResult bindingResult) {
	    ModelAndView model = new ModelAndView();
	    User userExists = userService.findUserByEmail(user.getEmail());
	    
	    if(userExists != null) {
	     bindingResult.rejectValue("email", "error.user", "This email already exists!");
	    }
	    if(bindingResult.hasErrors()) {
	     model.setViewName("signup");
	    } else 
	    {
	    	
	    	Address address = new	Address( "default address", "default phonenumber", "default city", "default state", "default country", 11111);
	    	 addressService.saveNewAddress(address);
	    	 user.setAddress(address);
	     userService.saveNewUser(user);
	     
	     System.out.println("================User id ============ "+user.getUser_id());
	     
	     Cart cartForNewUser = new Cart(user.getUser_id());
	     Order orderForNewUser = new Order(user.getUser_id()) ;
	     
	     cartService.saveNewCart(cartForNewUser);
	     orderService.saveNewOrder(orderForNewUser);
	     
	     
	     model.addObject("msg", "User has been registered successfully!");
	     model.addObject("user", new User());
	     model.setViewName("signup");
	    }
	    
	    return model;
	   }
	   
	   
	   @RequestMapping(value= {"/access_denied"}, method=RequestMethod.GET)
	   public ModelAndView accessDenied() {
	    ModelAndView model = new ModelAndView();
	    model.setViewName("errors/access_denied");
	    return model;
	   }
	   
	   
	   @RequestMapping(value= {"/logined"}, method=RequestMethod.GET)
	   public ModelAndView home() {
	    ModelAndView model = new ModelAndView();
	    Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    User user = userService.findUserByEmail(auth.getName());
	    
	    model.addObject("userId", user.getUser_id()  );
	    model.addObject("userName", user.getName()  );
	    model.setViewName("logined");
	    return model;
	   }
	   
	   
	   @RequestMapping(value= {"/user1/home"}, method=RequestMethod.GET)
	   public ModelAndView home1() {
	    ModelAndView model = new ModelAndView();
	   Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    User user = userService.findUserByEmail(auth.getName());
	    
	    model.addObject("userName", user.getName());
	    model.setViewName("user1/home");
	    return model;
	   }
	   
	   
	      
	   
	   

	 
	 
}
