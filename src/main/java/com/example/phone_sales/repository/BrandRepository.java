package com.example.phone_sales.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.phone_sales.entity.Brand;

public interface BrandRepository extends JpaRepository<Brand, Integer> {

}
