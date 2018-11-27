package com.example.kidsCafe.DAO;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.kidsCafe.vo.ReserveSpaceVO;
import com.example.kidsCafe.vo.ReserveVO;

@Repository
public class ReserveDAO {
	
	@Autowired
	SqlSession ss;
	
	//it sends dummy reservation data and receives date that customer can reserve.
	public ArrayList<ReserveSpaceVO> ReserveSpace(ReserveVO reserve)
	{
		ArrayList<ReserveSpaceVO> list = null;
		
		ReserveMapper mapper = ss.getMapper(ReserveMapper.class);
		try
		{			
			list = mapper.ReserveSpace(reserve);				
		}
			
		catch (Exception e)
		{
			e.printStackTrace();
		}
		
		/*finally
		{
			if (ss != null) ss.close();
		}*/
		
		
		
		return list;
	}
	
	public int indiviConfirm(ReserveVO reserve) 
	{
		int result = 0;
		
		ReserveMapper mapper = ss.getMapper(ReserveMapper.class);
		try
		{			
			System.out.println("info : "+reserve.toString());
			result = mapper.indiviConfirm(reserve);
		}
			
		catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return result;
	}
	
	public int timeScheduleInput(ReserveSpaceVO reserveSpace) 
	{
		int result = 0;
		
		ReserveMapper mapper = ss.getMapper(ReserveMapper.class);
		try
		{			
			result = mapper.timeScheduleInput(reserveSpace);				
		}
			
		catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return result;
	}
	
	public ReserveVO findReserve(int resNum)
	{
		ReserveVO res= null;
		
		ReserveMapper mapper = ss.getMapper(ReserveMapper.class);
		try
		{			
			res = mapper.findReserve(resNum);				
		}
			
		catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return res;
	}
	
	public int GetResNum() 
	{
		int result = 0;
		
		ReserveMapper mapper = ss.getMapper(ReserveMapper.class);
		try
		{			
			result = mapper.GetResNum();
			System.out.println("ResNum : "+result);
		}
			
		catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return result;
	}
	
	


}
