public class pe_0002 {
    public static void main(String[] args) {
        int gross, a, b, c;

        gross = 0;
        a = 1;
        b = 2;
        while (a < 4e6) {
            if (a % 2 == 0) {
                gross += a;
            }
            c = a + b;
            a = b;
            b = c;
        }

        System.out.println(gross);
    }
}
