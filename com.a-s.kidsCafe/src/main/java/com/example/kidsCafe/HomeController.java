package com.example.kidsCafe;

import org.springframework.mobile.device.Device;
import org.springframework.mobile.device.DeviceUtils;

import java.util.ArrayList;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpServletRequest request) {
		logger.info("Welcome home! The client locale is {}.", locale);
		//ユーザーが使っているデヴァイス
		Device device = DeviceUtils.getCurrentDevice(request); 
		
		ProductDAO dao = new ProductDAO();
		//表示する製品をDBからもらう
		ArrayList<Product> list = dao.getAllProduct();
		//DBから持ってきた製品配列をモデルにいれる
		model.addAttribute("list", list);
		
		 if (device == null) {
	            return "device is null";
	        }
	        String deviceType = "unknown";
	        if (device.isNormal()) {
	            deviceType = "normal";
	        } else if (device.isMobile()) {
	            deviceType = "mobile";
	        } else if (device.isTablet()) {
	            deviceType = "tablet";
	        }
	        System.out.println("----------------");
	        System.out.println("deviceType is "+deviceType);
	        
		if (deviceType.equals("mobile")){
			return "mobilePage";
		}
		return "home";
	}
	
	//製品をクリックした時
	@RequestMapping(value = "productGet",method=RequestMethod.GET)
	public String GetProduct(Model model, int productNum)
	{
		
		ProductDAO dao = new ProductDAO();
		//DAOから製品版後で製品を探す。
		Product pro = dao.getIndividual(productNum);
		
		//見つけた製品をモデルにいれる
		model.addAttribute("product", pro);
		//個別決済ページへ移動
		return "individual";
	}
	@RequestMapping(value = "navi",method=RequestMethod.GET)
	public String navi(Model model, String action)
	{
		String act = action;
		
		if (act.equals("notice"))
		{
			return "notice";
		}
		else if (act.equals("access"))
		{
			return "access";
		}
		else if (act.equals("qna"))
		{
			return "qna";
		}
		else if (act.equals("home"))
		{
			return "home";
		}
			
		return "home";
	}
	
	@RequestMapping(value = "facility",method=RequestMethod.GET)
	public String facility(Model model, String action)
	{
		String act = action;
		
		if (act.equals("meetingRoom"))
		{
			return "meetingRoom";
		}
		if (act.equals("foodCourt"))
		{
			return "foodCourt";
		}
		if (act.equals("playground"))
		{
			return "playground";
		}
		if (act.equals("presentation"))
		{
			return "presentation";
		}
		if (act.equals("ITproducts"))
		{
			return "ITproducts";
		}
		
		return "home";
	}
	
}
