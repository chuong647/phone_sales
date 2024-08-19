package com.example.phone_sales.repository;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.phone_sales.entity.Product;

public interface ProductRepository extends JpaRepository<Product, Integer> {
    List<Product> findByBrandBrandName(String brandName);
    List<Product> findByCategoryCategoryName(String categoryName);
	List<Product> findByPrice(Double minPrice, Double maxPrice);
	List<Product> findByProductNameContainingIgnoreCase(String productName);
    
}
