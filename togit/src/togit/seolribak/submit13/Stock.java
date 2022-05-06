package togit.seolribak.submit13;

public class Stock {

	private int no; // 기업 번호
	private String enterpise; // 기업 이름
	private int price ; // 가격 ((int)((Math.random()*10000)%10)+1) * 100;
	private int buynum = 0;   // 구매 개수

	public Stock() {

	}
		
	public Stock(int no, String enterpise, int price, int buynum) {
		super();
		this.no = no;
		this.enterpise = enterpise;
		this.price = price;
		this.buynum = buynum;
	}
	
	public Stock(int no, String enterpise, int price) {
		super();
		this.no = no;
		this.enterpise = enterpise;
		this.price = price;
	}

	@Override
	public String toString() {
		return "[ " + no + " " + enterpise + " | 현재가 = " + price + " ]";
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getEnterpise() {
		return enterpise;
	}

	public void setEnterpise(String enterpise) {
		this.enterpise = enterpise;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getBuynum() {
		return buynum;
	}

	public void setBuynum(int buynum) {
		this.buynum = buynum;
	}

	

}
