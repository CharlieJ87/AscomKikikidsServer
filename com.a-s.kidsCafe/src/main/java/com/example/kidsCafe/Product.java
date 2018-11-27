package com.example.kidsCafe;

public class Product {
	
	//名前と値段だけ
	private String name;
	private int price;
	private int productNum;
	public Product() {
		
	}
	
	public Product(String name, int price, int productNum) {
		
		this.name = name;
		this.price = price;
		this.productNum = productNum;
	}



	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}

	public int getProductNum() {
		return productNum;
	}

	public void setProductNum(int productNum) {
		this.productNum = productNum;
	}

	@Override
	public String toString() {
		return "Product [name=" + name + ", price=" + price + ", productNum=" + productNum + "]";
	}
	
	
	

}
