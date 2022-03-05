import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;

public class pe_0008 {

    // FUNCTIONS


    public static int prod(int[] arr) {
        int n = 1;
        for (int i : arr) {
            n *= i;
        }
        return n;
    }


    // SCRIPT


    public static void main(String[] args) throws IOException {
        int c, p;
    
        int hold = 0;
        int arr[] = {0, 0, 0, 0};

        File fh = new File("../../../data/pe_0008.txt");
        FileReader fr = new FileReader(fh);
        BufferedReader br = new BufferedReader(fr);

        int i = 0;
        while ((c = br.read()) != -1) {
            if ('0' <= c && c <= '9') {
                arr[i % 4] = c - '0';
                p = prod(arr);
                if (hold < p) {
                    hold = p;
                }
                i++;
            }
        }

        br.close();
        fr.close();
    
        System.out.println(hold);
    }

}
