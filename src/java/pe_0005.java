public class pe_0005 {
    public static void main(String[] args) {
        int n = 0;
        int check = 0;

        while ( check == 0 ) {
            check = 1;
            n += 20 * 19;
            for (int m = 19; 1 <= m; --m) {
                if ( n % m != 0 ) {
                    check = 0;
                    break;
                }
            }
        }

        System.out.println(n);   
    }
}
