package ifTest;

import java.util.Date;

public class If01 {

	public static void main(String[] args) {
		// 지금 시각은 오전일까? 오후일까? 저녁일까?판단
		Date date=new Date();
		//컨트롤+쉬프트+o(영문자)=>자동 import
		
		int hour=date.getHours();
		if(hour<12) {
			System.out.println("오전이군요!!!");
			}
		else if(hour<18) {
			System.out.println("오후이군요!!!");
			}
		else {
			System.out.println("저녁이군요!!!");
			}
		}
	}
