public class pe_0009 {

    // SCRIPT


    public static void main(String[] args) {
        int a, b, c;
    
        for (a = 1; a < 999; a++) {
            for (b = a + 1; b < (1000 - a); b++) {
                c = 1000 - (a + b);
                if (a * a + b * b == c * c) {
                    System.out.printf("%d %d %d\n", a, b, c);
                    System.exit(0);
                }
            }
        }
    }

}
