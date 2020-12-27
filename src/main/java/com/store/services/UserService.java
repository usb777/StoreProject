package com.store.services;

import java.util.List;
import java.util.Optional;



import com.store.dao_repositories.UserJPARepository;
import com.store.model.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PathVariable;

@Service
@Transactional
public class UserService implements IUserService 
{

    private UserJPARepository userRepository;
    
    @Autowired 
    UserJPARepository repository;

    @Autowired
    public UserService( UserJPARepository ud) {
        this.userRepository = ud;
    }

    @Override
    public List<User> getUsers() 
    {
        return userRepository.findAll();
    }
    
	
	@Override
	public User getUserByID(int id) 
	{
		return userRepository.getOne(id);
	}
    
	
	 @Override
	 public User saveNewUser(User u) 
	 {
	        return userRepository.save(u);
	 }

    /**
     * Sort method:Dzimtry
     * 
     * @Override public List<Role> getAllRoles() { return
     *           ud.findAll(Sort.by(Sort.Direction.ASC, "id")); //Sorted By    *  
     *                    userId asc }
     * 
     */
	
    
    
    
	   @Override
	    @Transactional
	    public User updateUser(User u) 
	   {
	        User oldC = userRepository.getOne(u.getUser_id());
	       
	        if (u.getName() != null) 
	        {
	            oldC.setName(u.getName());
	            oldC.setEmail(u.getEmail());  // added for change
	            oldC.setUsername(u.getUsername());
	            oldC.setPassword(u.getPassword());
	          //  oldC.setRole(u.getRole());
	            
	            
	        }
	        return oldC;
	    }
	    

	    @Override
	    public void deleteUser(int id)
	    {      
	        User oldC = userRepository.getOne(id); // getOne
	        userRepository.deleteById(id);
	       
	    }


}