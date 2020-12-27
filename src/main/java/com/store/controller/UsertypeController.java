package com.store.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;


import com.store.model.Usertype;
import com.store.services.UsertypeService;

@RestController
public class UsertypeController
{

	 @Autowired
	    private UsertypeService usertypeService;

	    @GetMapping("/usertypes")
	    public ResponseEntity < List < Usertype >> getAllSpecialty() 
	    {
	        return ResponseEntity.ok().body(usertypeService.getUsertypes());
	    }

	
}
