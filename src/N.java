import java.util.*;
public class N {
	public static void main(String[] args) {
		Scanner s=new Scanner(System.in);
		System.out.println("enter length");
		int l=s.nextInt();
		int a[]=new int[l];
		for(int i=0;i<l;i++)
		{
			System.out.println("enter ele");
			a[i]=s.nextInt();
		}
		System.out.println("enter rotations");
		int t=s.nextInt();
		for(int i=0;i<l;i++)
		{
			System.out.print(a[i]);
		}
		int q;
		int w=0;
		while(t>0)
		{
		q=a[0];	
		for(int i=0;i<l-1;i++)
		{
        a[i]=a[i+1];
		}
		a[l-1]=q;
		t--;
		
        }
		System.out.println("new");
		for(int i=0;i<l;i++)
		{
			System.out.print(a[i]);
		}
		Arrays.sort(a);
		System.out.println("sorted");
		for(int i=0;i<l;i++)
		{
			System.out.print(a[i]);
		}
		System.out.println(Arrays.toString(a));
		
	}

}
