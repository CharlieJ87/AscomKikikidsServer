package com.example.kidsCafe;



import java.util.ArrayList;
import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.kidsCafe.DAO.ReserveDAO;
import com.example.kidsCafe.vo.ReserveSpaceVO;
import com.example.kidsCafe.vo.ReserveVO;
import com.google.gson.Gson;


//Controller for mobile application
@Controller
@RequestMapping("mobile")
public class MobileController {
	
	private static final Logger logger = LoggerFactory.getLogger(MobileController.class);
	
	@Autowired
	private ReserveDAO dao;
	
	
	/* This method receives number of adult, number of child, and play time.
	 * And sends it to database to check where can customer reserve.
	 * If it finished, this method sends the result to mobile application.
	 * */
	@ResponseBody
	@RequestMapping(value = "TimeSche", method = RequestMethod.POST)
	public String timeSche(String adult, String child, String playTime) {
		
		ArrayList<ReserveSpaceVO> list = null;
		
		//Strings change integer
		int a = Integer.parseInt(adult);
		int b = Integer.parseInt(child);
		int p = Integer.parseInt(playTime);		
		
		ReserveVO reserve = new ReserveVO(a,b,p);
		
		logger.info(" {}.", adult);
		logger.info(" {}.", child);
		logger.info(" {}.", playTime);
		
		list = dao.ReserveSpace(reserve);
		
		System.out.println(list);
		
		Gson gson = new Gson();
		
		String result = gson.toJson(list);
		
		return result;		
		
	}
	
	
	
	@ResponseBody
	@RequestMapping(value = "insertReserve", method = RequestMethod.POST)
	public void indiviConfirm(ReserveVO reserve) {
		
		
		System.out.println(reserve);
		
		int result = 0;
		int result2 = 0;
		
		int userTime = reserve.getUseTime();
		
		result = dao.indiviConfirm(reserve);
		
		for (int i = 0; i < userTime; i++)
		{
			ReserveSpaceVO rsVO = new ReserveSpaceVO(reserve.getDate(),reserve.getResTime()+i);
			
			
			
			if (dao.timeScheduleInput(rsVO) == 1)
			{
				++result2;
			}
			
		}
		
		int resNum = reserve.getResNum();
				
		
		/*if (result == 1 && result2 == 2)
		{
			
			return "success";
		}*/
		
		if (resNum != 0) {
			
			
			
			Gson gson = new Gson();
			
			HashMap<String, Integer> map = new HashMap<String,Integer>();
			
			map.put("resNum", resNum);
			
			String resnumResult = gson.toJson(map);
			
			//return resnumResult;
		}
		
		
		
		//return "fail";
		
	}
	
	@ResponseBody
	@RequestMapping(value = "getResNum", method = RequestMethod.POST)
	public String GetResNum() {
			
		
		int resNum = 0;
				
		resNum = dao.GetResNum();
							
		Gson gson = new Gson();
			
		HashMap<String, Integer> map = new HashMap<String,Integer>();
			
		map.put("resNum", resNum);
		
		String resnumResult = gson.toJson(map);
		System.out.println("ResNumString :"+resnumResult );
		
		return resnumResult;
		
			
				
	}
	
	
	

}
