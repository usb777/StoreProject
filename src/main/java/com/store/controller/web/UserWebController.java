package com.store.controller.web;

import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.store.dao_repositories.CartJPARepository;
import com.store.exception.RecordNotFoundException;
import com.store.model.Cart;
import com.store.model.Product;
import com.store.model.User;
import com.store.services.CartService;
import com.store.services.OrderService;
import com.store.services.ProductService;
import com.store.services.UserService;

@Controller
@RequestMapping("/user")
public class UserWebController
{
	private UserService userService;
	
	 @Autowired
	    public UserWebController(UserService userService)
	 {
	        this.userService = userService;
	  }
	
	
	 @Autowired
	    private ProductService productService;	 
	 
	 @Autowired
	    private CartService cartService;
	 
	 @Autowired
	    private OrderService orderService;
	 
	 private CartJPARepository cartRepository;
	
	
/*	
	 @RequestMapping("/info")
	    public String showUserList(Model model)  
	    {
		 	model.addAttribute("user", userService.getUsers());
		    return "user/info";
	    }
	 
*/
		@RequestMapping(path = { "/info/{userId}"})
		public String editEmployeeById(Model model, @PathVariable("userId") int userId) 	throws RecordNotFoundException 
		{ 
		
			if (userId>0) 
			{
			//	EmployeeEntity entity = service.getEmployeeById(id.get());
				model.addAttribute("user", userService.getUserByID(userId));
			} 
			return "user/info";
		}
	 
	 	
	   
	   @RequestMapping("/carts")
	   public String showCartList(Model model) 
	   {		   
		   model.addAttribute("carts", cartService.getCarts()   );
		   return "user/carts";		   
	   }
	 
	   @RequestMapping("/orders")
	   public String showOrderList(Model model) 
	   {		   
		   model.addAttribute("orders", orderService.getOrders()  );
		   return "user/orders";		   
	   }
	 
	   

	   @RequestMapping("/{userId}/store")
	   public String showStoreProduct(Model model, @PathVariable("userId") int userId) 
	   {	
		   List < Cart > carts = cartService.findCartsByUserId(userId);
		   model.addAttribute("carts", carts    );
		/*   
		   Object items = cartService.countCartItems(userId);
		   model.addAttribute("cartItems",items );
		  */ 
		 //  model.addAttribute("totalPrice",cartService.totalCartPrice(userId) );
		   
		   model.addAttribute("userId", userId);
		   model.addAttribute("products", productService.getProducts());
		  
		   return "user/store";		   
	   }
	   
	   
	   @RequestMapping("/addCart/{userId}/{productId}")
	   public String addProductToCart(Model model, @PathVariable("userId") int userId, @PathVariable("productId") int productId ) 
	   {	
		   Cart cart = new Cart( userId, productId, new Date(), 1);
		   cartService.saveNewCart(cart);
		   
		   
		   
		   List < Cart > carts = cartService.findCartsByUserId(userId);
		   model.addAttribute("carts", carts    );
		  /* 
		   Object items = cartService.countCartItems(userId);
		   model.addAttribute("cartItems",items );
		   
		   model.addAttribute("totalPrice",cartService.totalCartPrice(userId) );
		   */
		   
		   model.addAttribute("userId", userId);		   
		   model.addAttribute("products", productService.getProducts());
		   
		 
		   return "user/store";			   
		   
	   }
	   
	 
	   
	   
	   
	 
}
