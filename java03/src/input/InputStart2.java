package input;

import java.util.Scanner;

public class InputStart2 {

	public static void main(String[] args) {
		//.=>접근 연산자
	
		System.out.println("나의 정보 입력");
		System.out.println("----------");
		
		System.out.print("나이를 입력하세요:");
		Scanner sc=new Scanner(System.in);
		String age=sc.next();
		
		System.out.print("성별을 입력하세요:");
		String gender=sc.next();
		
		System.out.print("이름을 입력하세요:");
		String name=sc.next();
		System.out.println("----------");
		
		
	}

}
