import 'dart:convert';

import 'package:be_crypto/Model/order_model.dart';
import 'package:http/http.dart' as http;

class OrderBookService {
  Future<dynamic> fetchData() async {
    var response = await http.post(
        Uri.parse("https://voltrixcrypt.io:3033/trade/orderbook"),
        body: {"pair": "BTC_USDT"});
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      // print(data);
      List<dynamic> list = data['buy_orders'];
      List<OrdersModel> orders =
          list.map((e) => OrdersModel.fromJson(e)).toList();
      return orders;
    } else {
      return null;
    }
  }
}
