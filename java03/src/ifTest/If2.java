package ifTest;


import java.util.Scanner;

public class If2 {

	public static void main(String[] args) {
		/*
		 * 메뉴를 고르세요 1.짜장면 2.짬뽕 2.우동 
		 * 당신의 선택은?1 
		 * 당신은 짜장면을 주문하셨습니다.
		 */
		Scanner sc=new Scanner(System.in);
		
		System.out.println("저기요!!!");
		System.out.println("-------------------------------");
		System.out.println("메뉴를 고르세요");
		System.out.println("-------------------------------");
		System.out.println("메뉴를 고르세요 1)짜장면 2)짬뽕 3)우동");
		System.out.println("-------------------------------");
		System.out.print("당신의 선택은?");
		int menu=sc.nextInt();
		System.out.print("주문수량은?");
		int count=sc.nextInt();
		
		int jajang=4500;
		int jambong=5000;
		int woodong=5500;
	
		String food=null;
		int price=0;
		
		if(menu==1) {
			food="짜장면";
			price=jajang*count;
		}
		else if(menu==2) {
			food="짬뽕";
			price=jambong*count;
		}
		else  {
			food="우동";
			price=woodong*count;
		}
		System.out.println("당신은"+food+"을 선택하셨군요.");
		System.out.println("당신이 지불할 금액은"+price+"원입니다.");
		System.out.println("-------------------------------");
		
		//전체 내야할 금액이 만원이상이면 이천원 깎아주기
		
		if(price>=10000) {
			price=price-2000;
			System.out.println("금액이 만원이상으로 2000원 할인해서 총"+price+"원입니다.");
		}
		
		/*
		 * if(menu==1) 
		 * { 
		 * System.out.println("당신은 짜장면을 주문하셨습니다."); 
		 * } 
		 * else if(menu==2) {
		 * System.out.println("당신은 짬뽕을 주문하셨습니다."); 
		 * } 
		 * else if(menu==3) {
		 * System.out.println("당신은 우동을 주문하셨습니다."); 
		 * } else {
		 * System.out.println("잘못 주문하셨습니다."); 
		 * }
		 */
		
		}
	}
