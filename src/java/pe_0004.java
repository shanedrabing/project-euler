public class pe_0004 {
    public static int reverse_number(int n) {
        int m = 0;
        while (n != 0) {
            m *= 10;
            m += n % 10;
            n /= 10;
        }
        return m;
    }
    
    public static boolean is_palindromic(int n) {
        return n == reverse_number(n);
    }

    public static void main(String[] args) {
        int max = 0;

        for (int a = 1; a < 1000; a += 1) {
            for (int b = a; b < 1000; b += 1) {
                int p = a * b;
                if (is_palindromic(p) && max < p) {
                    max = p;
                }
            }
        }
    
        System.out.println(max);   
    }
}
