class EPricingCalculator {
 // calculate price based on tax and shipping
 static double calculateTotalPrice(double productPrice, String location) {
  double taxRate = getTaxRateLocation(location);
  double taxAmount = productPrice * taxRate;

  double shippingCost = getShippingsCost(location);

  double totalPrice = productPrice + taxAmount + shippingCost;
  return totalPrice;
 }
}