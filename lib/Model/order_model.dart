class OrdersModel {
  final String price;
  final String amount;
  final String total;

  OrdersModel({required this.price, required this.amount, required this.total});

  factory OrdersModel.fromJson(Map<String, dynamic> j) {
    return OrdersModel(
        price: j['price'], amount: j['amount'], total: j['total']);
  }
}
