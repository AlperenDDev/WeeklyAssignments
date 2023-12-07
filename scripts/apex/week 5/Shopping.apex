// Example 1
ShoppingCart.setDiscount(0.05); // Set discount to 5%

ShoppingCart cart1 = new ShoppingCart();
cart1.setName('Donald Duck');
cart1.addItem('chips');
cart1.addItems('cookies', 9.99);
cart1.addItems('pancake', 10.20);
Map<String, Decimal> moreItems = new Map<String, Decimal>{'ketchup' => 5.55, 'tea' => 6.00};
cart1.addItems(moreItems);

System.debug(cart1.getShopItems());
System.debug('Total value of cart is ' + cart1.getTotalAmount().setScale(2));
cart1.printSummary();
cart1.clearCart();

// Example 2
ShoppingCart.setDiscount(0.10); // Set discount to 10%

ShoppingCart cart2 = new ShoppingCart('Uncle Scrooge');
cart2.addItems('towel', 49.99);
cart2.addItems('Suit', 250.00);
cart2.addItems('watch', 199.00);

System.debug(cart2.getShopItems());
System.debug('Total value of cart is ' + cart2.getTotalAmount().setScale(2));
cart2.printSummary();
cart2.clearCart();
