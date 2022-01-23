import java.util.ArrayList;
import java.util.stream.Stream;

public class pe_0006 {

    // FUNCTIONS


    public static int sum(Stream<Integer> arr) {
        return arr.reduce(0, Integer::sum);
    }

    public static int sum_of_squares(ArrayList<Integer> arr) {
        return sum(arr.stream().map(n -> n * n));
    }

    public static int square_of_sum(ArrayList<Integer> arr) {
        int gross = sum(arr.stream());
        return gross * gross;
    }


    // SCRIPT


    public static void main(String[] args) {
        ArrayList<Integer> arr = new ArrayList<Integer>();
        for (int n = 1; n <= 100; ++n) {
            arr.add(n);
        }
        System.out.println(square_of_sum(arr) - sum_of_squares(arr));
    }
}
