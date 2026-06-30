class EPricingCalculator {
 // calculate price based on tax and shipping
 static double calculateTotalPrice(double productPrice, String location) {
  double taxRate = getTaxRateLocation(location);
  double taxAmount = productPrice * taxRate;

  double shippingCost = getShippingCost(location);

  double totalPrice = productPrice + taxAmount + shippingCost;
  return totalPrice;
 }

 // calculate shipping cost
 static double calculateShippingCost(double productPrice, String location) {
  double shippingCost = getShippingCost(location);
  return shippingCost.toStringAsFixed(2);
  }

  // Calculate tax 
  static double calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }
 
  static double getTaxRateLocation(String location) {
    // lookup the tax rate for the given location from a tax rate database or API
    // return the appropriate tax rate

    return 0.10; // example tax rate of 10%
  }

  static double getShippingCost(String location) {
    // lookup the shipping cost for the given location from a shipping cost database or API
    // calculate shipping cost based on various factors like distance, weight, etc.

    return 5.00; // example shipping cost of $5.00
  }
}