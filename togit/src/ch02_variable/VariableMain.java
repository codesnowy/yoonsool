package ch02_variable;

public class VariableMain {

	public static void main(String[] args) {
		/* 변수의 선언
		 
		 변수의 선언과 함께 값을 초기화
		 -> initialization = init   */
				int numOne =1;   // 변수의 선언 + 초기화
		int numTwo;      //변수의 선언
		numTwo = 2;      // 초기화
		
		//변수의 다중 선언 : 가능 하지만 값을 넣어 주면서 동시에 선언할 수는 없다
		int numThree, numFour;
	    numThree = 3;
	    numFour = 4;
	    
	    // * 참고 단축키 [Ctrl+/] : 해당 커서 주석 처리

	    System.out.println(numOne);
	    
//	    변수의 값 변경 : 이미 int로 위에서 선언했기 때문에 그냥 값만 넣어주면 된다.
	     numOne = 10;
	    
	    System.out.println(numOne);
	    
//	    상수의 선언 : 값이 변하지 않을 때 사용
	    final double MATH_PI=3.141592;
	    
	    System.out.println(MATH_PI);
	    	    
	    System.out.println("\n========================================\n");
	    
/*	    문자열 String
	    문자열은 클래스이므로, 다양한 메소드를 내장하고 있다.
	    문자열은 쌍따옴표("") 안에 작성한 문자들을 말한다.
	    '가'는 char 타입이므로 "가" 문자열과 타입이 다르다. */
	    
	    String fruits = "Apple, Banana, Cherry";
	    System.out.println(fruits);
	    
//	    .lenght() : 해당 문자열의 길이를 리턴
	    System.out.println(fruits.length());
	    System.out.println("abced".length());
	    
/*	    .charAt = 인덱스 : 배열, 문자열에서 몇 번째에 해당하는 숫자를 의미한다. 
	    0부터 시작하므로 주의! 인덱스 0은 첫 번째를 의미한다
	    해당 문자열에서 인덱스에 해당하는 문자(char)를 리턴한다.*/
	    
	    char alphaP = fruits.charAt(1);     // 선언
	    System.out.println(alphaP);         // 결과값 도출
	    
	    System.out.println(fruits.charAt(1)); //위의 선언에서 바로 가져옴
	    
//	    위의 두 명령어는 같은 값을 나타내게 된다.
	    
/*	   indexOf(문자열)
       해당 문자열에서 괄호 안에 있는 문자의 인덱스를 리턴해준다. */
	    System.out.println(fruits.indexOf("Banana"));
//	   해당 문자열을 포함하지 않는다면 "-1"을 리턴 -> 문자열을 포함하는지 하지 않는지로 활용할 수 있다.
	    System.out.println(fruits.indexOf("banana")); 
	    
/*	   변수를 사용하는 이유?
 
       1. 콘솔창에 10을 10번 출력해보자 -> 앗, 실수였다. 11로 바꿔보자
          이렇게 값을 수정해야하는 상황에서 변수로 선언을 했었다면 쉽게 바꿀 수 있다.
       2. 변수명에 의미를 넣어 선언해둔다면 수정할 때 이해가 쉽다. */
	  
/*	 .substring(시작 인덱스, 끝 인덱스)
     해당 문자열을 시작 인덱스에서 끝 인덱스 전까지(끝 인덱스를 포함하고 싶다면 +1을 한다.) 표시한다. */
	    
	    
	  System.out.println(fruits.substring(0,5));  
	    
/*	  괄호 안에 시작 인덱스 하나만 넣는다면?
      해당 문자열을 시작 ~ 끝까지 표현해준다. */
	  int CherryIndex = fruits.indexOf("Cherry");
	  System.out.println(fruits.substring(CherryIndex));
	  
	  System.out.println(fruits.substring(15));
	  
	  System.out.println(fruits.substring(fruits.indexOf("Banana")));  
	    
/*	 .replace(바뀔 문자열, 바꾸고 싶은 문자열)
      해당 문자열에서 바뀔 문자열을 바꾸고 싶은 문자열로 교체 */
	  
	  System.out.println(fruits.replace("Cherry", "Coconut"));
	  System.out.println(fruits);  
	  //String 객체의 메소드 실행시 선언한 원본은 그대로 유지된다.
	    
//	  .trim() 해당 문자열의 양쪽 끝에 존재하는 공백 문자만 제거해 준다.
	  String world = "             The New World           ";
	  System.out.println(world.replace(" ","")); // 모든 공백을 제거해버림
	  System.out.println(world.trim()); // 양쪽 끝에 존제하는 공백 문자만 제거
	  
/*	.toUpperCase() 해당 문자열에 존재하는 알파벳을 전부 "대문자"로 변경
    .toLowerCase() 해당 문자열에 존재하는 알파벳을 전부 "소문자"로 변경 */
	 System.out.println(fruits.toUpperCase());
	 System.out.println(fruits.toLowerCase());
	 
//	 .concat(문자열) 해당 문자열 뒤에 괄호 안에 있는 문자열을 붙인다
	 System.out.println(fruits.concat(", Durian"));
//	 하지만 "+"를 사용해도 똑같이 실행된다.
	 System.out.println(fruits + ", Durian");
	  
//	 변수 자체를 수정하려면?
	 
	 fruits = fruits + "Durian";
 
System.out.println("\n========================================\n");
	  
/*	String은 참조타입이므로 null값을 가질 수 있다. (기본타입은 불가능)
    참조 타입의 변수를 객체 또는 인스턴스라고 부른다. */

  int Number = 5; // 기본 타입이므로 스택에 저장된다.
  System.out.println(Number);

  String nothing = "";   // 참조이므로 힙에 저장되고 그 주소가 스택에 저장된다.
  System.out.println(nothing);

  String nullvalue = null; //null이란 아무 것도 아니라는 것 -> 힙에도 저장되지 않는다.
  System.out.println(nullvalue);

System.out.println("\n========================================\n");

/*  문자(char)
    한 문자와(이땐 작은따옴표 사용) 숫자를 담을 수 있다.
    이 때의 숫자는 유니코드에 등록된 각 문자들에 대한 넘버링이다. */

    char wordA = 'A';
    System.out.println(wordA);
    char numA = 65;
    System.out.println(numA);
    char hangul = 44032;
    System.out.println(hangul);
    
//  byte는-128 부터 127까지만 담을 수 있다.
    
    byte byteNum = 127;
    byteNum++;            // 1을 더한다
    byteNum += 2;         // 2를 더한다
    System.out.println(byteNum);  // 3이 더해졌으므로 다시 리턴하여 -126이 된다. 
    
System.out.println("\n========================================\n");
    
/*  형변환(Casting)
    형변환이 가능한 경우에는 형 변환을 이용해서 상황에 맞게 적절히 사용할 수 있게 된다.  */

//  int 곱하기 double은 double 타입으로 자동 형변환
    int intVal = 15;
    double doubVal = 1.23;
    
    System.out.println(intVal*doubVal); 
    double mulResult = intVal * doubVal;
    
//  int 곱하기 float를 해도 float로 자동 형변환이 된다.
    float floatRslt = intVal * 2.34f; // * 숫자 뒤에 f를 붙여줘야 함
    
    
//  long 선언 시 숫자 뒤에 "l"을 붙여야 int에서 long으로 자동 형변환이 된다 
    long longVal = 20000; // 현재 20000은 int 값이다 뒤에 l을 붙여야 롱타입으로 자동 형변환된다  
    long longVar = 20000l;

//  숫자 + 문자열(String)을 하면 숫자는 문자열로 자동 형변환이 되어 이어 붙여진다.
    String countStar = "비오";
    String addCountStar = countStar + 100;
    System.out.println(addCountStar);

System.out.println("\n========================================\n");


/*  강제 형변환
    (타입) 값을 이용하여 값을 해당 타입으로 강제 형변환할 수 있다.  */

    float floatNum = (float)(10 * 3.14);
    
// 가장 많이 하는 실수!!!!
    
    double result = 10 / 3; // int 나누기 int이므로 3.0으로 표현된다. 실수!
    System.out.println(result);  

// 3.333333... 으로 표현하려면?
    
    double result2 = (double)10 / 3; // 숫자 두 개 중 하나를 형변환 해준다
    System.out.println(result2);     
    
    double result1 = 10 / 3.0; // 숫자 두 개 중 소수로 바꿔준다.
    System.out.println(result1);  

//  숫자 문자열과 숫자간의 형변환
    String strNum = "123";  // 숫자이나 타입은 문자  

    System.out.println(strNum+2); //덧셈이 되는 것이 아니라 이어 붙여해진다.
    
    
/* 문자열을 숫자로 형변환하려면?
   Integer.parseInt(숫자 문자열)로 형변환을 해준다 */
        int intNum = Integer.parseInt(strNum);
    System.out.println(intNum+2);
    
// 정수를 문자열로 형변환
        String strNumCast = Integer.toString(intNum);
        System.out.println(strNumCast + 2);
        
// 실수 문자열을 실수로 형변환
   strNum = "50.23";
   double doubNum = Double.parseDouble(strNum);
   System.out.println(doubNum + 5);

	}

}
