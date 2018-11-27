package com.example.kidsCafe;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

public class ProductDAO {
	
	private SqlSessionFactory factory = MyConfig.getSqlSessionFactory();
	
	public ArrayList<Product> getAllProduct()
	{
		ArrayList<Product> list = null;
		SqlSession ss = null;
		
		try
		{
			
			ss = factory.openSession();
				
			ProductMapper mapper = ss.getMapper(ProductMapper.class);
			
			list = mapper.getAllProduct();	
			
			ss.commit();
				
		}
			
		catch (Exception e)
		{
			e.printStackTrace();
		}
		
		finally
		{
			if (ss != null) ss.close();
		}
		
		
		
		return list;
	}
	
	public Product getIndividual(int productNum)
	{
		Product pro = null;
		SqlSession ss = null;
		
		try
		{
			
			ss = factory.openSession();
				
			ProductMapper mapper = ss.getMapper(ProductMapper.class);
			
			pro = mapper.getIndividual(productNum);	
			
			ss.commit();
				
		}
			
		catch (Exception e)
		{
			e.printStackTrace();
		}
		
		finally
		{
			if (ss != null) ss.close();
			
		}
		
		
		return pro;
	}

}
