import 'package:be_crypto/Model/order_model.dart';
import 'package:be_crypto/service/orderbookservice.dart';
import 'package:get/get.dart';

class OrderBookController extends GetxController {
  var orders = <OrdersModel>[].obs;
  Future<void> fetch() async {
    var response = await OrderBookService().fetchData();
    if (response != null && response is List<OrdersModel>) {
      orders.assignAll(response);
    } else {
      orders.assignAll([]);
    }
  }
}
