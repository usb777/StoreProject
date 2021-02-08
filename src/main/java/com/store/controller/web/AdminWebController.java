package com.store.controller.web;

import java.util.Date;
import java.util.List;

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
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.store.exception.RecordNotFoundException;
import com.store.model.Address;
import com.store.model.Product;
import com.store.model.User;
import com.store.services.AddressService;
import com.store.services.CartService;
import com.store.services.OrderService;
import com.store.services.ProductService;
import com.store.services.UserService;

@Controller
@RequestMapping("/admin")
public class AdminWebController
{
	private UserService userService;
	
	 @Autowired
	    private ProductService productService;	 
	 
	 @Autowired
	    private CartService cartService;
	 
	 @Autowired
	    private OrderService orderService;
	 
	
	 @Autowired
	    public AdminWebController(UserService userService)
	 {
	        this.userService = userService;
	  }
	 
	
	 @Autowired
	    private AddressService addressService;
	 
	 
	 
	 @RequestMapping("/users")
	    public String showUserList(Model model)  
	    {
		 	model.addAttribute("users", userService.getUsers());
		 	
		 	
		    return "admin/users";
	    }
	 
	
	   //View Layer
	   @RequestMapping("/products")
	   public String showProductList(Model model)
	   {		   
		   model.addAttribute("products", productService.getProducts());
		   return "admin/products";		   
	   }
	   
	   
	   @RequestMapping("/products/delete/{id}")
		public String deleteProduct(@PathVariable(name = "id") int id) throws RecordNotFoundException 
      {
		   productService.deleteProduct(id);
			
			return "redirect:/admin/products";
		}
	   
	   @RequestMapping("/products/edit/{id}")
		public ModelAndView showEditProductForm(@PathVariable(name = "id") int id) throws RecordNotFoundException 
	   {
			ModelAndView mav = new ModelAndView("/admin/product-edit");   //html page 
			Product product = productService.getProductByID(id);
			
			mav.addObject("product", product);
			
			return mav;
		}
	   
	   
	   @RequestMapping(value = "/products/save-edit", method = RequestMethod.POST)
		public String saveProduct(@ModelAttribute("product") Product product) throws RecordNotFoundException 
	   { 		   
		    productService.saveNewProduct(product)			;
		    return "redirect:/admin/products";
		}
	   
	   
	   
	   @RequestMapping("/products/new")
			public String showNewProductForm(Model model) 
		   {	
				Product product = new Product();
				
				model.addAttribute("product", product);
				return "admin/product-add";
			}	
	   
	   
	   
	   
	   @RequestMapping(value = "/products/save-new", method = RequestMethod.POST)
		public String saveNewProduct(@ModelAttribute("product") Product product) throws RecordNotFoundException 
	   {  
		  productService.saveNewProduct(product);			
		  return "redirect:/admin/products";
		}
	   
	   

	   
	   
	   
	   @RequestMapping("/temp")
	   public String showTempPage(Model model) 
	   {		   
		   //model.addAttribute("orders", orderService.getOrders()  );
		   return "admin/temp";		   
	   }
	   
	   
	   @RequestMapping("/users/delete/{id}")
		public String deleteUser(@PathVariable(name = "id") int id) {
		   userService.deleteUser(id);
			
			return "redirect:/admin/users";
		}
	   
	   
	   @RequestMapping("/users/edit/{id}")
		public ModelAndView showEditUserForm(@PathVariable(name = "id") int id) 
	   {
			ModelAndView mav = new ModelAndView("/admin/edit-user");   //html page 
			User user =  userService.getUserByID(id);
			mav.addObject("user", user);
			mav.addObject("user_address", user.getAddress());
			    System.out.println(user.getAddress());
			return mav;
		}	
	   
	   //save edited user
	   @RequestMapping(value = "/users/save", method = RequestMethod.POST)
		public String saveUser(@ModelAttribute("user") User user) throws RecordNotFoundException 
	   {   
		 		   
		   System.out.println("======Addr==========");
		   System.out.println(user.getAddress());
		   System.out.println("================");
		   
		 //  Address  address = addressService.getAddressByID();
		   
		   
		   //user.setAddress();
		   
		    userService.saveNewUser(user);			
		    return "redirect:/admin/users";
		}
	   
	   
	   @RequestMapping("/users/new")
			public String showNewUserForm(Model model) 
		   {	
				User user = new User();
				user.setDateof_birth(new Date());
				model.addAttribute("user", user);
				return "admin/add-user";
			}	
	   
	   
	   //Address( String address, String phonenumber, String city, String state, String country, int zipcode,	int user_id) 
	
	   @RequestMapping(value = "/users/save-new", method = RequestMethod.POST)
	 		public String saveNewUser(@ModelAttribute("user") User user) throws RecordNotFoundException 
	 	   {
		       // automatically add new Address in DB
		       Address address = new Address("your street and apt", "your phonenumber", "your city", "your state", "your country", 11111);
		       
	 		  		  user.setAddress(address);
	 		  userService.saveNewUser(user);			
	 		  return "redirect:/admin/users";
	 		}
	   
	   
	   @RequestMapping("/carts")
	   public String showCartList(Model model) 
	   {		   
		   model.addAttribute("carts", cartService.getCarts()   );
		   return "admin/carts";		   
	   } 
	   
	   
	   @RequestMapping("/carts/delete/{id}")
	 		public String deleteCart(@PathVariable(name = "id") int id) throws RecordNotFoundException 
	       {
	 		   cartService.deleteCart(id);
	 			
	 			return "redirect:/admin/carts";
	 		}
	 	   
	   
		 
	   @RequestMapping("/orders")
	   public String showOrderList(Model model) 
	   {		   
		   model.addAttribute("orders", orderService.getOrders()  );
		   return "admin/orders";		   
	   }   
	   
	   
	   @RequestMapping("/logout")
		public String adminLogout() 
       {	
			return "redirect:/";
		}

	 
}
