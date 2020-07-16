package input;

import java.util.Scanner;

public class InputStart4 {

	public static void main(String[] args) {
		//주석의 단축키:
		//한줄 주석=> 컨트롤 +
		//여러줄 주석=> 컨트롤+쉬프트+/
		
		Scanner sc=new Scanner(System.in);
		
		System.out.print("나이를 입력하세요:");
		int age=sc.nextInt();
	
		
		if(age>=18)
			System.out.println("성년입니다.");
		else
			System.out.println("미성년자입니다.");
			
		
		
		
	}

}
