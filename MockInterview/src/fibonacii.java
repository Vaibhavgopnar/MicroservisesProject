import java.util.Scanner;

public class fibonacii {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		System.out.println("Enter range no");
		int no = sc.nextInt();
		
		int a = 0, b = 1;
		int c = 0;
		
		System.out.println(a);
		System.out.println(b);
		
		for(int i = 2; i <no; i++) {
			
			c = a + b;
			a = b; 
			b = c;
			System.out.println(c);
			
		}
		
	}

}
