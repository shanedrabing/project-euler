public class pe_0001 {
    public static void main(String[] args) {
        int gross, i;

        gross = 0;
        for (i = 0; i < 1000; ++i) {
            if (i % 3 == 0 || i % 5 == 0) {
                gross += i;
            }
        }

        System.out.println(gross);
    }
}
