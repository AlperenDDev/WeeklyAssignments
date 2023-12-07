public class CalculatorVideo {
    public decimal dynamicCalculationMethod(decimal num1, decimal num2, string operation){
        operation = operation.toUpperCase();
        decimal output;
        switch on operation {
            when 'ADDITION' {
                output = num1 + num2;
            }
            when 'SUBTRACTION' {
                output = num1 - num2;
            } 
            when 'DIVISION'{
                if (num1 != 0) {
                    output = num1 / num2;
                } else {
                    system.debug('you cant divide 0 ');
                }
            }
            when 'MULTIPLICATION'{
                output = num1 * num2;
            } 
            when else{
                system.debug('no such operation');
            }
        }
        return output;
    }
    
    public decimal calculateDiscount(decimal totalPrice) {
        decimal discountP = 0;

        if (totalPrice >= 1000) {
            discountP = 0.25;
        } else if (totalPrice >= 800){
            discountP = 0.15;
        } else if (totalPrice >= 500){
            discountP = 0.1;
        } else if (totalPrice >= 100){
            discountP = 0.05;
        }

        return discountP;
    }

    public decimal calculateNetPrice(integer quantity, decimal price){
        decimal netPrice;
        decimal totalPrice = quantity * price;
        system.debug('total price is ' + totalPrice);
        decimal discountP = calculateDiscount(totalPrice);
        system.debug('discount percentage is ' + (discountP*100) + '%');
        decimal discountPrice = totalPrice * discountP;
        system.debug('discount price is ' + discountPrice);

        netprice = totalPrice - discountPrice;

        return netPrice;
    } 


}