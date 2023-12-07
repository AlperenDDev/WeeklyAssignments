public class CalculatorAgain {
    public static integer sumOfPositiveInteegers(integer n) {
        integer sum ;

        if (n < 0) {
            system.debug('we are not calculate negatives');
        } else {
            sum = 0;

            for (Integer i = 1; i < n; i++) {
                sum += i;
            }
        }
        return sum;
    }

    public static integer sumOfPositiveInteegersWhile(integer n) {
        integer sum ;

        if (n < 0) {
            system.debug('we are not calculate negatives');
        } else {
            sum = 0;
            integer i =0;
            while (i <= n) {
                sum += i;
                i++;
            }
        }
        return sum;
    }

    public static void multiplicationTableFor (integer n){
        for (integer i = 1; i <= 10; i++){
            system.debug(i + 'x' + n + '=' + i*n);
        }
    }

    public static void multiplicationTableWhile(integer n){
        integer i = 1;
        while (i <= 10) {
            system.debug(i + 'x' + n + '=' + i*n);
            i++;
        }
    }

    public static integer sumOfSquares(integer i) {
        integer s = 0;
        /*if (i>0) {
            for (Integer j = 0; j <= i; j++) {
                s = s + (j*j);
        } else {
            for (Integer j = 0; j <= i; j++) {
                s = s + (j*j);
        }
        }*/

        if (i<0) {
            i = -i;
        }
        for (Integer j = 0; j <= i; j++) {
            s = s + (j*j);
        }
        return s;
    }
}