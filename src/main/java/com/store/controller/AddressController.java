package com.store.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.store.model.Address;
import com.store.services.AddressService;


@RestController
public class AddressController
{
	 @Autowired
	    private AddressService addressService;

	    @GetMapping("/addresses")
	    public ResponseEntity < List < Address >> getAllAddresses() 
	    {
	        return ResponseEntity.ok().body(addressService.getAddresses());
	    }
}
