package com.example.kidsCafe;

import java.util.ArrayList;

public interface ProductMapper {
	
	public ArrayList<Product> getAllProduct();
	
	public Product getIndividual(int productNum);

}
