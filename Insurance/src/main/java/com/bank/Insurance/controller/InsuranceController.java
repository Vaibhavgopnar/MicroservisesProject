package com.bank.Insurance.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.bank.Insurance.model.Insurance;
import com.bank.Insurance.repository.InsuranceRepository;

@RestController
public class InsuranceController {

	@Autowired
	private InsuranceRepository insuranceRepository;
	
	@PostMapping(value = "/insurance")
	public List<Insurance> getAccountDetails(@RequestBody Insurance account) {
		
		List<Insurance> accounts = insuranceRepository.getInsuranceByCustomerId(account.getCustomerId());
		return accounts;
	}
}
