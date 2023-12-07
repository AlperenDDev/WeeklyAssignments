public class OperationsHelper {
    public decimal largestOutOfTwoNumbers(decimal num1, decimal num2) {
        decimal largest;
        system.debug('check num1>num2 is ' + (num1 > num2));
        if (num1>num2) {
            largest = num1;
        } else {
            largest = num2;
        }
        return largest;
    }

    public decimal largestOutOfTwoNumbersEasy(decimal num1,decimal num2){
        decimal max = math.max(num1, num2);
        return max;
    }

    public decimal smallestOutOfThreeNumbers(decimal num1, decimal num2, decimal num3){
        decimal smallest;

        if (num1<num2 && num1<num3) {
            smallest = num3;
        } else if (num2<num1 && num2<num3){
            smallest = num2;
        } else{
            smallest = num3;
        }
        return smallest;
    }
}