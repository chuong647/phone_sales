package com.example.phone_sales.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.phone_sales.entity.Product;
import com.example.phone_sales.repository.ProductRepository;

@Service
public class ProductService {
	@Autowired
    private ProductRepository productRepository;

    public List<Product> searchByBrand(String brandName) {
        return productRepository.findByBrandBrandName(brandName);
    }

    public List<Product> searchByCategory(String categoryName) {
        return productRepository.findByCategoryCategoryName(categoryName);
    }

    public List<Product> searchByPriceRange(Double minPrice, Double maxPrice) {
        return productRepository.findByPrice(minPrice, maxPrice);
    }

    public List<Product> searchByMultipleCriteria(String brandName, String categoryName, Double minPrice, Double maxPrice) {
        // Custom query implementation or use Specifications
        return productRepository.findByPrice(minPrice, maxPrice); // Adjust as needed
    }
    public List<Product> searchByProductName(String productName) {
        return productRepository.findByProductNameContainingIgnoreCase(productName);
    }

	
}
