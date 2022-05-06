package togit.seolribak.submit13;

import java.text.DecimalFormat;
import java.util.regex.Pattern;
import java.util.Scanner;

public class StockMain {

	public static void main(String[] args) {

		StockDB stock = StockDB.getInstance();
		Scanner sc = new Scanner(System.in);
		DecimalFormat dc = new DecimalFormat("###,###,###,###");

		stock.allstock();

		while (true) {
			String dcMM = dc.format(stock.mymoney);
			String pattern = "^[0-9]*$";
			
			System.out.println("자본금: " + dcMM);
			stock.printStock();
			System.out.println("==========================================");
			System.out.println("행동을 선택해 주세요");
			System.out.println("1. 매수 | 2. 매도 | 3. 내 주식 확인 | 4. 다음날 | 5. 종료");
			System.out.print(">>> ");
			String command = sc.nextLine();

			if (command.equals("1")) {

				stock.printStock();
				while(true) {
				System.out.println("어떤 기업을 매수하겠습니까? 숫자로 선택해 주세요.");
				System.out.print(">>> ");
				String selectEn = sc.nextLine();
					boolean regex = Pattern.matches(pattern,selectEn);
					if (!regex) {
						System.out.println("숫자로 입력해주세요.\n");
						continue;
					} else if(Integer.parseInt(selectEn) > stock.entersize){
						System.out.println("1 ~ " + stock.entersize + "중에서 선택해주세요\n");
						continue;
					}else {
						stock.selectB(selectEn);
						System.out.println("매수 희망 갯수를 입력해 주세요.");
						System.out.print(">>> ");
						int buyNum = Integer.parseInt(sc.nextLine());
						
						stock.buyS(buyNum);
						break;
					}
				}
			} else if (command.equals("2")) {

				stock.printMyS();
				while(true) {
				if (stock.myList.isEmpty()) {
					System.out.println(">>보유 중인 주식이 없습니다. 처음으로 돌아갑니다.<<\n");
					break;
				} else {
					System.out.println("매도시 주식 1개당 10원의 수수료가 붙습니다.\n" 
				                        + "어떤 기업을 매도하겠습니까? 숫자로 선택해 주세요.");
					System.out.print(">>> ");
					String selectEn = sc.nextLine();
					boolean regex = Pattern.matches(pattern,selectEn);
					if (!regex) {
						System.out.println(">>숫자로 입력해주세요.<<\n");
						continue;
					} else if(stock.haveS(selectEn)){
						System.out.println(">>가지고 있는 기업 중에서 선택해주세요<<\n");
						continue;
					}else {
						stock.selectS(selectEn);
					}
				}
//					do {
//						System.out.println("매도 희망 갯수를 입력해 주세요.");
//						System.out.print(">>> ");
//						int selNum = Integer.parseInt(sc.nextLine());
//						if(!(stock.sellS(selNum))) {
//							System.out.println("현재 가지고 있는 주식수가 부족합니다. 다시 입력해주세요.");
//						}else {
//							stock.sellS(selNum);
//							break;
//						}
//					}while(true);

					while (true) {
						System.out.println("매도 희망 갯수를 입력해 주세요.");
						System.out.print(">>> ");
						int selNum = Integer.parseInt(sc.nextLine());
						if (stock.sellImp < 0) {
							// 가지고 있는 갯수보다 더 많이 팔려고 한 경우
							System.out.println(">>현재 가지고 있는 주식수가 부족합니다. 다시 입력해주세요.<<");
						} else {
							// 매수성공
							stock.sellS(selNum);
						}
					}
				}
				
			} else if (command.equals("3")) {
				stock.printMyS();

				System.out.println("==========================================");
			} else if (command.equals("4")) {
				System.out.println("\n새 장이 시작되었습니다.");
				stock.nextday();

			} else if (command.equals("5")) {
				System.out.println("프로그램을 종료합니다.");
				break;
			} else {
				System.out.println("올바른 숫자를 입력해 주세요.");

			}

		}
	}

}
