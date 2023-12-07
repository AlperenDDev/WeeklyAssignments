CalculatorVideo cv = new CalculatorVideo();
system.debug('multiplication of 5 to 9 is ' + cv.dynamicCalculationMethod(5, 9, 'MULTIPLICATION'));

system.debug('q = 100, p = 9. Frinal price is ' + cv.calculateNetPrice(100, 9));

decimal d1 = cv.calculateDiscount(999);
system.debug('999 get discount of ' + d1);