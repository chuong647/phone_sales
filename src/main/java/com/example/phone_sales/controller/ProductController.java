package com.example.phone_sales.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.phone_sales.entity.Product;
import com.example.phone_sales.service.ProductService;

@Controller
public class ProductController {
	@Autowired
    private ProductService productService;
	

    @GetMapping("/search")
    public String search(@RequestParam(required = false) String productName,
    					 @RequestParam(required = false) String brand,
                         @RequestParam(required = false) String category,
                         @RequestParam(required = false) Double minPrice,
                         @RequestParam(required = false) Double maxPrice,
                         Model model) {
        List<Product> products;
        if (productName != null) {
            products = productService.searchByProductName(productName);
        }else if (brand != null && category != null && minPrice != null && maxPrice != null) {
            products = productService.searchByMultipleCriteria(brand, category, minPrice, maxPrice);
        } else if (brand != null) {
            products = productService.searchByBrand(brand);
        } else if (category != null) {
            products = productService.searchByCategory(category);
        } else if (minPrice != null && maxPrice != null) {
            products = productService.searchByPriceRange(minPrice, maxPrice);
        } else {
            products = List.of();
        }

        model.addAttribute("products", products);
        return "results";
    }
}
