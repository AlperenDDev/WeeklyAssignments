public class ShoppingCart {
    private String name;
    private Map<String, Decimal> shopItems;
    private static Decimal discount = 0.05;

    public static void setDiscount(Decimal newDiscount) {
        discount = newDiscount;
    }

    public ShoppingCart() {
        name = '';
        shopItems = new Map<String, Decimal>();
        System.debug('Hello ' + name + ', we are glad you are here, what would you like to shop today?');
    }

    public ShoppingCart(String newName) {
        name = newName;
        shopItems = new Map<String, Decimal>();
        System.debug('Hello ' + name + ', we are glad you are here, what would you like to shop today?');
    }

    public void setName(String newName) {
        name = newName;
    }

    public String getName() {
        return name;
    }

    public void addItem(String itemName) {
        shopItems.put(itemName, 0.0);
    }

    public void addItems(String itemName, Decimal price) {
        shopItems.put(itemName, price);
    }

    public void addItems(Map<String, Decimal> itemsPrice) {
        shopItems.putAll(itemsPrice);
    }

    public String removeItem(String itemName) {
        if (shopItems.containsKey(itemName)) {
            shopItems.remove(itemName);
            return itemName + ' removed successfully';
        } else {
            return 'no such item is added in cart, how can I remove it buddy?';
        }
    }

    public Map<String, Decimal> getShopItems() {
        return shopItems;
    }

    public Decimal getTotalAmount() {
        Decimal total = 0.0;
        for (Decimal price : shopItems.values()) {
            total += price;
        }
        if (total > 300) {
            total -= total * discount;
        }
        return total;
    }

    public void printSummary() {
        Decimal totalAmount = getTotalAmount();
        System.debug('You have added ' + shopItems.size() + ' items in your cart.');
        System.debug('Each item and its prices are below:');
        for (String item : shopItems.keySet()) {
            System.debug('Item name \'' + item + '\', its price is ' + shopItems.get(item).setScale(2));
        }
        System.debug('Total value of your cart is ' + totalAmount.setScale(2));

        if (totalAmount >= 300) {
            Decimal discountAmount = totalAmount * discount;
            Decimal finalAmount = totalAmount - discountAmount;
            System.debug('Final price to pay is ' + finalAmount.setScale(2));
            System.debug('Congratulations, You JUST saved ' + discountAmount.setScale(2) + '.');
        } else {
            Decimal amountNeededForDiscount = 300 - totalAmount;
            System.debug('Add items worth ' + amountNeededForDiscount.setScale(2) + ' to get a mind-blowing discount.');
        }
    }

    public void clearCart() {
        shopItems.clear();
    }
}
