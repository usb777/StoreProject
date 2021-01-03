package com.store.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestBody;

import com.store.model.User;
import com.store.services.IUserService;
import com.store.services.UserService;
//import static org.springframework.hateoas.Links.*;


@RestController
@RequestMapping("/users")
public class UsersController 
{
	private UserService us;
	
	 @Autowired
	    public UsersController(UserService us)
	 {
	        this.us = us;
	  }
	 
	  @GetMapping
	    public ResponseEntity<List<User>> getAllUsers() {
	        return new ResponseEntity(us.getUsers(), HttpStatus.OK);
	    }
	  
	  @GetMapping("/{id}")
		public ResponseEntity getUserById(@PathVariable int id) {
			if(id == 0 ) {
				return new ResponseEntity<>("Id must not be 0", HttpStatus.BAD_REQUEST);
			}
			return new ResponseEntity<User>(us.getUserByID(id), HttpStatus.OK);
		}
	 
	  
	 
	    @PostMapping
	    public ResponseEntity<User> saveNewUser(@RequestBody User u)
	    {
	        if(u.getUser_id()!=0)
	        {
	            return new ResponseEntity("Id must be 0", HttpStatus.BAD_REQUEST);
	        }
	        return new ResponseEntity(us.saveNewUser(u), HttpStatus.OK);
	    } // postMapping
	    
	    
	    //  Dont patch another field
	    @PatchMapping
	    public ResponseEntity<User> updateUser(@RequestBody User u) 
	    {
	        if (u.getUser_id() == 0) {
	            return new ResponseEntity("User id must not be 0", HttpStatus.BAD_REQUEST);
	        }
	        return new ResponseEntity(us.updateUser(u), HttpStatus.CREATED);
	    }

	    @DeleteMapping("{id}")
	    public  ResponseEntity<Object> deleteUser(@PathVariable int id)
	    {    	
	    	  us.deleteUser(id);
	    	  return new ResponseEntity( HttpStatus.OK);  	
	    	
	        
	    }  
	    


}
