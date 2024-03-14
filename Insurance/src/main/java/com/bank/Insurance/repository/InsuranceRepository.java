package com.bank.Insurance.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.bank.Insurance.model.Insurance;

public interface InsuranceRepository extends CrudRepository<Insurance, Long> {

	List<Insurance> getInsuranceByCustomerId(int customerId);
}