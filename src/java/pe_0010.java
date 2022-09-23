import java.util.ArrayList;

public class pe_0010 {

    // SCRIPT

    public static void main(String[] args) {
        // initialize variables
        int i, j, size, half;
        long gross;

        // array size
        size = 2000000;
        half = size / 2;

        // new array
        ArrayList<Boolean> prime = new ArrayList<Boolean>(size);

        // why does Java blow?
        while(prime.size() < size) {
            prime.add(false);
        }

        // two is prime, begin sum
        prime.set(2, true);
        gross = 2;

        // all odds are potential primes
        for (i = 3; i < size; i += 2) {
            prime.set(i, true);
        }

        // disregard multiples of primes
        for (i = 3; i < half; i += 2) {
            if (prime.get(i)) {
                gross += i;
                for (j = i * 2; j < size; j += i) {
                    prime.set(j, false);
                }
            }
        }

        // continue the sum
        for (; i < size; i += 2) {
            if (prime.get(i)) {
                gross += i;
            }
        }

        // print out
        System.out.println(gross);
    }
}
