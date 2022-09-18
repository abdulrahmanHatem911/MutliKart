class OrderDummy {
  final String title;
  final String price;
  OrderDummy({
    required this.price,
    required this.title,
  });
  static List<OrderDummy> orderData = [
    OrderDummy(price: '220.00', title: 'Bag total'),
    OrderDummy(price: '20.00', title: 'Bag savings'),
    OrderDummy(price: '276.00', title: 'Coupon Discount'),
    OrderDummy(price: '50.00', title: 'Delivery'),
  ];
}
