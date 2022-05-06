package togit.seolribak.submit13;

import java.text.DecimalFormat;
import java.util.ArrayList;

public class StockDB {

	private ArrayList<Stock> enterList = new ArrayList<>();

	private StockDB() {
	}

	private static StockDB instance = new StockDB();

	public static StockDB getInstance() {
		return instance;
	}
	
	DecimalFormat dc = new DecimalFormat("###,###,###,###");
	
	// 기업 자료 
	Stock osung = new Stock(1, "사성전자", ((int)((Math.random()*10000)%10)+1) * 100);
	Stock never = new Stock(2, "네버", (int) (Math.random() * 900) + 300);
	Stock kakau = new Stock(3, "카카우", (int) (Math.random() * 1900) + 50);
	
	int entersize;
	
	public void allstock() {
		enterList.add(osung);
		enterList.add(never);
		enterList.add(kakau);
		entersize = enterList.size();
	}
	
	// 자본금
	int mymoney = 10000;


	// 기업의 현재가 출력
	public void printStock() {
		for (int i = 0; i < enterList.size(); i++) {
			System.out.println(enterList.get(i));
			
		}
	}
	
	// 매수하고 싶은 기업 선택

	private ArrayList<Stock> selectB = new ArrayList<>(); // 선택한 기업 담기

	public void selectB(String selectEn) {
		for (int i = 0; i < enterList.size(); i++) {
			if (enterList.get(i).getNo() == Integer.parseInt(selectEn)) {
				selectB.add(enterList.get(i));
			}
		}
	}

	// 매수실행

	private ArrayList<Stock> myS = new ArrayList<>();
	
	
	ArrayList<Integer> myList = new ArrayList<>();
	// 매도 실행 시에 주식을 가지고 있는지와 보유 주식 넘버를 체크하기 위한 리스트
	
	public void buyS(int buyNum) {
		while (true) {
			int useM;   //매수 시 사용한 금액
			int tempmoney = mymoney - selectB.get(0).getPrice() * buyNum;
			if (tempmoney < 0) { // 자본금을 넘어서 구매하려고 한 경우
				System.out.println("자본금이 부족합니다. 다시 입력해주세요.");
				break;
			} else {
				useM = selectB.get(0).getPrice() * buyNum;
				String dcUM = dc.format(useM);
				mymoney = mymoney - useM;
				String dcMM = dc.format(mymoney);
				System.out.println("▶ "+ dcUM + "원을 사용하셨습니다. "
									+ "현 자본금은 " + dcMM + "입니다"
									+"\n==========================================\n");
				myS.add(new Stock(selectB.get(0).getNo(), selectB.get(0).getEnterpise(), 
						selectB.get(0).getPrice(), buyNum));
				myList.add(selectB.get(0).getNo());
				selectB.clear();
				break;
			}
		}
	}
	
	// 매도 실행 시 가지고 있는 기업인지 체크
	
	public boolean haveS(String selectEn) {
		for (int i = 0 ; i < myS.size(); i++) {
			if(Integer.parseInt(selectEn) == myList.get(i)) {
				return false;
			}
		}
		return true;
	}
	
	// 내 주식 확인
	public void printMyS() {
		for (int i = 0; i < myS.size(); i++) {
			System.out.println("[ " + myS.get(i).getNo() + " " + myS.get(i).getEnterpise() + " | 구매가 = "
					+ myS.get(i).getPrice() + " | 보유수 = " + myS.get(i).getBuynum() + "]");
		}
	}

	// 매도하고 싶은 기업 선택

	private ArrayList<Stock> selectS = new ArrayList<>();
	String SelctSE = "";

	public void selectS(String selectEn) {
		for (int i = 0; i < myS.size(); i++) {
			if (myS.get(i).getNo() == Integer.parseInt(selectEn)) {
				selectS.add(myS.get(i));
				SelctSE = selectS.get(0).getEnterpise();
			}
		}
	}
	
	// 매도 실행

	int sellImp; //매수 시 갯수 체크를 하기 위한 변수

	public void sellS(int selNum) {
		sellImp = selectS.get(0).getBuynum() - selNum;
			// 자본금 손익 계산
			for (int i = 0; i < enterList.size(); i++) {
				if (enterList.get(i).getEnterpise().equals(SelctSE)) {
					mymoney = mymoney + (enterList.get(i).getPrice()* selNum) - (10*selNum)
							+ ((enterList.get(i).getPrice() * selNum)-(selectS.get(0).getPrice() * selNum));
					String dcMM = dc.format(mymoney);
					System.out.println("▶ "+"현재 자본금은 " + mymoney + "입니다");
					selectS.clear();
				}
			} // 가지고 있는 주식 수정
			for (int j = 0; j < myS.size(); j++) {
				if (myS.get(j).getEnterpise().equals(SelctSE)) {
					int temp = myS.get(j).getBuynum() - selNum;
					if (temp == 0) {
						myS.remove(j);
					} else {
						myS.get(j).setBuynum(myS.get(j).getBuynum() - selNum);
					}
				}
			}
		}

	// 다음날
	public void nextday() {
		for (int i = 0; i < enterList.size(); i++) {
			enterList.get(0).setPrice(((int)((Math.random()*10000)%10)+1) * 100);
			enterList.get(1).setPrice((int) (Math.random() * 900) + 300);
			enterList.get(2).setPrice((int) (Math.random() * 1900) + 50);
		}
	}

}
