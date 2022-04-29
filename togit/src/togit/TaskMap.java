package togit;

import java.util.HashMap;
import java.util.Scanner;

public class TaskMap {

	public static void main(String[] args) {
		
//		infoMap의 Key는 ID, Value는 PW라고 할 때 
//		아래의 회원정보 데이터 추가해주세요.
		
		HashMap<String, String> infoMember = new HashMap<>();
		infoMember.put("user1", "q1w2e3");
		infoMember.put("user2", "w2e3r4");
		infoMember.put("user3", "e3r4t5");
		infoMember.put("user4", "r4t5y6");
		infoMember.put("user5", "t5y6u7");
		
//		사용자가 ID와 PW를 파라미터로 넣었을때, 
//		infoMember의 Key(아이디)와 Value(비밀번호)와 비교하여
//		ID와 PW가 infoMember에 존재하는 Key와 일치하면 로그인 성공 출력
//		ID가 존재하지 않으면, 존재하지 않는 아이디입니다. 출력 
//		ID는 존재하지만 PW가 일치하지 않으면 비밀번호가 틀렸습니다. 출력
		
		//사용자에게서 ID와 PW를 받을 Scanner 선언
		Scanner sc = new Scanner(System.in);     
		
		System.out.println("아이디를 입력해주세요");
		System.out.print(">>> ");
		String userId = sc.nextLine();

		System.out.println("비밀번호를 입력해주세요");
		System.out.print(">>> ");
		String userPw = sc.nextLine();

		if (infoMember.containsKey(userId)) {
			if (!infoMember.get(userId).equals(userPw)) {
				System.out.println("비밀번호가 틀렸습니다");
			} else {
				System.out.println("로그인 성공");
			}
		} else {
			System.out.println("존재하지 않는 아이디입니다.");
		}
	}

}
