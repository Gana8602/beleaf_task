import 'package:be_crypto/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/ob_controller.dart';

class OrderBook extends StatefulWidget {
  const OrderBook({super.key});

  @override
  State<OrderBook> createState() => _OrderBookState();
}

class _OrderBookState extends State<OrderBook> {
  OrderBookController _orders = Get.put(OrderBookController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _orders.fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Container(child: Obx(() {
      if (_orders.orders.isEmpty) {
        return Center(
          child: Text(
            "No Orders Found",
            style: TextStyle(color: white),
          ),
        );
      }
      return SingleChildScrollView(
        child: DataTable(
            columnSpacing: 30,
            dividerThickness: 0,
            columns: [
              DataColumn(
                  label: Text(
                "Quantity(BTC)",
                style: TextStyle(color: grey),
              )),
              DataColumn(
                  label: Text(
                "Quantity(BTC)",
                style: TextStyle(color: grey),
              )),
              DataColumn(
                  label: Text(
                "Quantity(BTC)",
                style: TextStyle(color: grey),
              )),
            ],
            rows: _orders.orders.map((element) {
              return DataRow(cells: [
                DataCell(Text(
                  element.amount,
                  style: TextStyle(color: white),
                )),
                DataCell(Row(
                  children: [
                    Text(
                      element.price,
                      style: TextStyle(color: green),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      element.price,
                      style: TextStyle(color: red),
                    ),
                  ],
                )),
                DataCell(Text(
                  element.amount,
                  style: TextStyle(color: white),
                )),
              ]);
            }).toList()),
      );
    }));
  }
}
