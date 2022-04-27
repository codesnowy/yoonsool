package ch02_variable;

public class Variable {
	
	// 프로젝트 이름은 각 낱말의 첫 번째 글자를 대문자로 쓴다.
	// 패키지 이름은 전부 소문자로 쓴다.
	// 클래스 이름은 프로젝트 이름 짓는 법과 동일하다.
	// 단어와 단어 사이는 언더바(_)로 구분한다.
	
	//변수명 짓기 
	
	// 1. 카멜(Camel) 방식
		int todayIsHappy = 0;
	
	// 2. 스네이크 방식
		int today_is_happy = 0;
		
	// 3. 헝가리안 방식
		int intTodayIsHappy = 0;
		String strTodayIsHappy = "행복해";
			
	/* 변수일 때는 변수명 앞에 v_ 를 붙이고, 
		함수일 대는 함수명 앞에 f_를 붙이고,
		파라미터 변수에는 앞에 p_를 붙이는 방식 */
		int v_todayIsHappy = 0;
		
	/* 변수명 규칙
	 
 	  1. 이미 선언된 변수명은 사용 불가
 	  
	  2. 공백문자 및 특수문자는 사용 불가
		 ex) int today is happy -> 사용 불가
		 
	  3. 영어 대소문자를 구분한다. 
	  
	  4. 숫자는 맨 앞에 쓸 수 없다.
	   ex) int 2todayIsHappy -> 사용 불가
	   
	  5. 글자 수의 제한은 없다.   
	     변수명에 최대한 정보를 많이 넣어 다른 사람도 이해하기 쉽게 한다
	     
	  6. 맨 앞에 $, _ 기호는 쓸 수 있다.*/
		int $todayIsHappy = 0;
		int _todayIsHappy = 0;
				
	// 7. 자바 예약어는 변수 이름에 사용할 수 없다

	/*
	 * 상수명 짓기
	 * 
	 * 단어는 전부 대문자를 사용하며, 단어 사이는 언더바(_)를 표기하여 구분 해준다
	 */

	final String NEXT_IT_ADDRESS = "대전 희영빌딩 2층";
	
		
		
		
		
		
		
		
		
		
}
