package com.example.boycottproducts;

import com.google.gson.Gson;

public class Product {
    String name;
    String categories;
    String isWithUs;
    String images;

    public Product() {
    }

    public Product(String name, String categories, String isWithUs, String images) {
        this.name = name;
        this.categories = categories;
        this.isWithUs = isWithUs;
        this.images = images;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCategories() {
        return categories;
    }

    public void setCategories(String categories) {
        this.categories = categories;
    }

    public String getIsWithUs() {
        return isWithUs;
    }

    public void setWithUs(String withUs) {
        isWithUs = withUs;
    }

    public void setIsWithUs(String isWithUs) {
        this.isWithUs = isWithUs;
    }

    public String getImages() {
        return images;
    }

    public void setImages(String images) {
        this.images = images;
    }

    public String toJson(Product product) {
        return new Gson().toJson(product);
    }

    public Product fromJson(String product) {
        return new Gson().fromJson(product, Product.class);
    }
}

