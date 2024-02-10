class AStoreAppPriceCalculator {
  AStoreAppPriceCalculator._();

  static double calculateTotalPrice(double productPrice, String loation) {
    double taxRate = getTaxRateForLocation(loation);
    double taxAmount = productPrice * taxRate;
    double shippingCost = getShippingCost(loation);
    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  static String caluclateShippingCost(double productPrice, String loation) {
    double shippingCost = getShippingCost(loation);
    return shippingCost.toStringAsFixed(2);
  }

  static String caluclateTaxAmount(double productPrice, String loation) {
    double taxRate = getTaxRateForLocation(loation);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String loation) {
    // In a real app, this would be a call to a web service to get the tax rate for the location
    return 0.10;
  }

  static double getShippingCost(String loation) {
    // In a real app, this would be a call to a web service to get the shipping cost for the location
    return 5.00;
  }

  // static double getCartTotal(CartModel cart) {
  //   return cart.items.map((e) => e.price).fold(0,
  //       (previousPrice, currentPrice) => previousPrice + (currentPrice ?? 0));
  // }
}
