package com.example.phone_sales.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.phone_sales.repository.BrandRepository;
@Service
public class BrandService {
	@Autowired
    private BrandRepository brandRepository;
}
