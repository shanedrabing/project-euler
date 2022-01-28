public class pe_0007 {

    // FUNCTIONS


    public static boolean is_prime_6k1(int n) {
        int i;

        if (n <= 3) {
            return n > 1;
        } else if (n % 2 == 0 || n % 3 == 0) {
            return false;
        }
    
        i = 5;
        while (i * i <= n) {
            if (n % i == 0 || n % (i + 2) == 0) {
                return false;
            }
            i += 6;
        }
    
        return true;
    }


    // SCRIPT


    public static void main(String[] args) {
        int i, n;

        i = 1;
        n = 1;
        while (i != 10001) {
            n += 2;
            i += is_prime_6k1(n) ? 1 : 0;
        }

        System.out.println(n);
    }

}
