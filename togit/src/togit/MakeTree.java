package togit;

public class MakeTree {

	public static void main(String[] args) {
		
		int line = 5;
		
		System.out.println("방법1\n");
		String tree = "*";
		for (int i = 0; i < line; i++) {
			for (int j = (line - 1) - i; j > 0; j--) {
				System.out.print(" ");
			}
			System.out.println(tree);
			tree += "**";
		}
		
		System.out.println("\n방법2\n");
		
		for (int i = 0 ; i < line; i++) {
			for(int j = (line-1)-i ; j > 0 ; j--) {
				System.out.print(" ");
			}
			for(int k =(i*2)+1 ; k>0 ; k--) {
				System.out.print("*");
			}
			System.out.println();
		}
		
		System.out.println("\n방법3\n");
		
		System.out.println();
		for (int i = 0 ; i < line ; i++) {
			for(int j = i ; j > 0 ; j--) {
				System.out.print(" ");
			}
			for(int k =(line*2)-1-(i*2) ; k>0 ; k--) {
				System.out.print("*");
			}
			System.out.println();
		}
		System.out.println("\n트리를 뒤집어보자");
		
		System.out.println("방법1\n");
		String blank = "";
		for(int i = 0 ; i < line; i++) {
			String star = "*";
			for(int j = 0 ; j < (line-1)-i ; j++) {
				star += "**";
			}
			System.out.println(blank + star);
			blank += " ";
		}
		
		System.out.println("\n방법2\n");
		tree = "*********";
		
		for (int i = 0; i < 5 ; i++) {
			for (int j = i; j > 0; j--) {
				System.out.print(" ");
			}
			System.out.println(tree.substring(i,tree.length()-i));
			
		}

	}

}
