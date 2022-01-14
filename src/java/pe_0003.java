public class pe_0003 {
    public static void main(String[] args) {
        long n = 600851475143L;

        int i = 2;
        while (n != 1) {
            if (n % i == 0) {
                n = n / i;
            } else {
                i = i + 1;
            }
        }
        
        System.out.println(i);
    }
}
