package com.store.controller.web;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
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
import com.store.model.CartItem;
import com.store.model.OrderItem;
import com.store.model.Product;
import com.store.model.User;
import com.store.services.CartItemService;
import com.store.services.CartService;
import com.store.services.OrderItemService;
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
	    private CartItemService cartItemService;
	 
	 
	 @Autowired
	    private OrderService orderService;
	 
	 @Autowired
	    private OrderItemService orderItemService;
	 
	 
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
			
			 List < CartItem > cartItems = cartItemService.findCartItemByUserId(userId);
			   model.addAttribute("carts", cartItems );   			   
			   Object items = cartItemService.countCartItems(userId);
			   model.addAttribute("cartItems",items );			   
			   model.addAttribute("totalPrice",cartItemService.totalCartPrice(userId) );
			
		
			if (userId>0) 
			{
			//	EmployeeEntity entity = service.getEmployeeById(id.get());
				model.addAttribute("user", userService.getUserByID(userId));
			} 
			return "user/info";
		}
	 
	 	
	   
	   @RequestMapping("/{userId}/cart")
	   public String showCartList(Model model, @PathVariable("userId") int userId) throws RecordNotFoundException 
	   {		   
		   List < CartItem > cartItems = cartItemService.findCartItemByUserId(userId);
		   
		   /*
		   
		   List<Product> products  = new ArrayList<Product>(); // little stupid		   
		   Iterator<CartItem> iteratorCartItem = cartItems.iterator();		   
		   while(iteratorCartItem.hasNext()) 
		     {
			   //System.out.println(iteratorCartItem.next().getProduct_id());
			   products.add( productService.getProductByID(iteratorCartItem.next().getProduct_id()) );
			 }
		  
		    //model.addAttribute("products", products );
		   */
		   
		   
		  
		   model.addAttribute("carts", cartItems );  
		   
		   Object items = cartItemService.countCartItems(userId);
		   model.addAttribute("cartItems",items );
		   
		   model.addAttribute("totalPrice",cartItemService.totalCartPrice(userId) );
		   
		   model.addAttribute("userId", userId);
		   model.addAttribute("products", productService.getProducts());
		   
		   
		   
		   
		   return "user/cart";		   
	   }
	   
	   
	   
	   
	   
	   @RequestMapping("/carts/delete/{id}")
			public String deleteProduct(@PathVariable(name = "id") int id) throws RecordNotFoundException 
	      {
		   
		   String userID = cartItemService.getUserIDbyCartItemID(id).toString();
		   System.out.println("USERID = "+ userID);
			   cartItemService.deleteCartItem(id);
				
				return "redirect:/user/"+userID+"/cart";
			}
	   
	   
	     

	   @RequestMapping("/{userId}/store")
	   public String showStoreProduct(Model model, @PathVariable("userId") int userId) 
	   {	
		   List < CartItem > cartItems = cartItemService.findCartItemByUserId(userId);
		   model.addAttribute("carts", cartItems );   
		   
		   Object items = cartItemService.countCartItems(userId);
		   model.addAttribute("cartItems",items );
		   
		   model.addAttribute("totalPrice",cartItemService.totalCartPrice(userId) );
		   
		   model.addAttribute("userId", userId);
		   model.addAttribute("products", productService.getProducts());
		  
		   return "user/store";		   
	   }
	   
	   
	   @RequestMapping("/addCart/{userId}/{productId}")
	   public String addProductToCart(Model model, @PathVariable("userId") int userId, @PathVariable("productId") int productId ) throws RecordNotFoundException 
	   {	 
		   
		  /*
		   List < Cart > cartItems = cartService.findCartsByUserId(userId);	
		   model.addAttribute("carts", cartItems    );	 
        */		   
		   
		   Cart currentCartByUser = cartService.findCartByUserId(userId);
		   
		   Product product = productService.getProductByID(productId);
		   
		CartItem cartItem = new CartItem(currentCartByUser.getCart_id(), product, 1, new Date());  // Error is here   
		cartItemService.saveNewCartItem(cartItem);
		 
		   Object items = cartItemService.countCartItems(userId);
		   model.addAttribute("cartItems",items );
		   
		   model.addAttribute("totalPrice",cartItemService.totalCartPrice(userId) );
		   
		   
		   
		   model.addAttribute("userId", userId);		   
		   model.addAttribute("products", productService.getProducts());
		   
		 
		  // return "user/store";		
		   return "redirect:/user/"+userId+"/store";
		   
	   }
	   
	   
	   
	   
	   
	   
	   @RequestMapping("/{userId}/orders")
	   public String showOrderItemList(Model model, @PathVariable("userId") int userId) throws RecordNotFoundException 
	   {		   
		   List < OrderItem > orderItems = orderItemService.findOrderItemsByUserId(userId);
		   model.addAttribute("totalPriceByOrder",orderItemService.totalOrderPrice(userId) );		  
		   model.addAttribute("orderitems", orderItems );  
		   
		   
		   Object items = cartItemService.countCartItems(userId);
		   model.addAttribute("cartItems",items );
		   
		   model.addAttribute("totalPrice",cartItemService.totalCartPrice(userId) );
		   
		   model.addAttribute("userId", userId);
		   model.addAttribute("products", productService.getProducts());
		   
		   
		   
		   
		   return "user/order";		   
	   }
	   
	   
	   @RequestMapping("/logout")
			public String userLogout()
	        {	
				return "redirect:/";
			}
	 
	   
	   
	   
	 
}
