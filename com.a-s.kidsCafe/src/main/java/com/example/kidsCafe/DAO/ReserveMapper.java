package com.example.kidsCafe.DAO;

import java.util.ArrayList;
import java.util.Map;

import com.example.kidsCafe.vo.ReserveSpaceVO;
import com.example.kidsCafe.vo.ReserveVO;

//it`s interface. I recommend do not touch this page unless you have knowledge of mybatis.
public interface ReserveMapper {
	
	public ArrayList<ReserveSpaceVO> ReserveSpace(ReserveVO reserve);
	
	public int indiviConfirm(ReserveVO reserve);
	
	public int timeScheduleInput(ReserveSpaceVO reserveSpace);
	
	public ReserveVO findReserve(int resNum);
	
	public int GetResNum();

}
