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
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.store.dao_repositories.CartJPARepository;
import com.store.exception.RecordNotFoundException;
import com.store.model.Cart;
import com.store.model.CartItem;
import com.store.model.Order;
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
	   
	   
	
	 
	   @RequestMapping("/info-update/{userId}")
		public ModelAndView showEditUserForm(@PathVariable(name = "userId") int userId) throws RecordNotFoundException 
	   {
			ModelAndView mav = new ModelAndView("/user/info-update");   //html page 
					
			User user = userService.getUserByID(userId);
			mav.addObject("user", user);
			
			return mav;
		}
	   
	   
	   @RequestMapping(value = "/save", method = RequestMethod.POST)
			public String saveUser(@ModelAttribute("user") User user) throws RecordNotFoundException 
		   {   
			 		   
		   if( (user.getPassword().isEmpty())|| (user.getPassword().equals(null)) ) //  No changes? try to implement logik
		   {
			 
			   return "redirect:/user/info/"+user.getUser_id();
		   }
		   else 
		   {
			   //some code for changed password
		   }
		   
		    //  Address  address = addressService.getAddressByID();
			//user.setAddress();
			
		   		userService.saveNewUser(user);		/// u can change on UpdateUser
			 	return "redirect:/user/info/"+user.getUser_id();
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
		   
		 	
		   return "redirect:/user/"+userId+"/store";
		   
	   }
	   
	   
		 
	   @RequestMapping("/buy/{cartItemId}")
		public ModelAndView buyProduct(@PathVariable(name = "cartItemId") int cartItemId) throws RecordNotFoundException 
	   {
			ModelAndView mav = new ModelAndView("/user/order");   //html page 
			
			Object userId = cartItemService.getUserIDbyCartItemID(cartItemId);
			int user_id=-1;
			
			try {			
			 user_id = (int) userId;
			}
			catch (Exception e) {e.printStackTrace();}
			
			User user = userService.getUserByID(user_id);
			
			
			mav.addObject("user", user);
			mav.addObject("userId", user.getUser_id());	
			
			//System.out.println(user.getUser_id());	
			
			Order currentOrderByUser = orderService.findOrderByUserId(user.getUser_id());
			//	System.out.println(currentOrderByUser.toString());	
	 
			CartItem currentCartItem = cartItemService.getCartItemByID(cartItemId);
		//	System.out.println(currentCartItem.toString());
		//	System.out.println(currentOrderByUser.getOrder_id()); //Error!!!
			OrderItem orderItem = new OrderItem( currentOrderByUser.getOrder_id(),currentCartItem.getProduct(), new Date(), currentCartItem.getQuantity()) ;
			
		//	System.out.println(orderItem.toString());
			orderItemService.saveNewOrderItem(orderItem);
		//	System.out.println("Cart_id = "+currentCartItem.getId());
			
             cartItemService.deleteCartItem(currentCartItem.getId()); // delete Item from Cart
			
              mav.addObject("orderItems", orderItem);
              
              
			return mav;
		}
	   
	  /*
	   * Buy-all method 	   
	   */
	   @RequestMapping("/buy-all/{userId}")
		public ModelAndView buyAllProduct(@PathVariable(name = "userId") int userId) throws RecordNotFoundException 
	   {
		   CartItem currentCartItem = new CartItem();
		   Order currentOrderByUser = orderService.findOrderByUserId(userId);
		   
			ModelAndView mav = new ModelAndView("/user/order-all");   //html page 
			
			mav.addObject("userId", userId);	
			List<CartItem> cartItems = cartItemService.findCartItemByUserId(userId);
			List<OrderItem> orderItems = new ArrayList<OrderItem>();
			
			Iterator<CartItem> iteratorCI = cartItems.iterator();
			
			Date dateBuyAll = new Date(); 
			while (iteratorCI.hasNext())
			{
				currentCartItem = iteratorCI.next();
				
				
				OrderItem orderItem = new OrderItem( currentOrderByUser.getOrder_id(),currentCartItem.getProduct(), dateBuyAll, currentCartItem.getQuantity()) ;
				
				orderItemService.saveNewOrderItem(orderItem); // save OrderItem to Database				
				 cartItemService.deleteCartItem(currentCartItem.getId());  // delete Product from User Cart
				
				orderItems.add(orderItem ); // add orderItems to List for importing to view
				
			}
			
			mav.addObject("orderItems",orderItems);
			
			
              
			return mav;
		}
	 
	   
	   
	   
	   
}
