import 'package:be_crypto/utils.dart';
import 'package:flutter/material.dart';

class Sectionthree extends StatelessWidget {
  final TabController tabb;
  const Sectionthree({super.key, required this.tabb});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: MediaQuery.of(context).size.width,
      // color: Colors.green,
      child: Column(
        children: [
          SizedBox(
            height: 40,
            child: TabBar(
              indicatorColor: Colors.amber,
              isScrollable: true,
              tabAlignment: TabAlignment.start,
              controller: tabb,
              tabs: [
                Tab(
                  child: Text(
                    "Orders",
                    style: TextStyle(color: white),
                  ),
                ),
                Tab(
                  child: Text(
                    "Order History",
                    style: TextStyle(color: white),
                  ),
                ),
                Tab(
                  child: Text(
                    "Cancel Orders",
                    style: TextStyle(color: white),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              // color: Colors.amber,
              child: TabBarView(
                controller: tabb,
                children: [Tab1(), tab2(), tab3()],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Tab1 extends StatelessWidget {
  const Tab1({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> data = [
      {
        "pair": "BTC/USDT",
        "price": 10000,
        "side": "Buy",
        "Type": "Limit",
        "Amount": "0.000",
        "Action": "Cancel"
      },
      {
        "pair": "BTC/USDT",
        "price": 10000,
        "side": "Sell",
        "Type": "Limit",
        "Amount": "0.000",
        "Action": "Cancel"
      },
      {
        "pair": "BTC/USDT",
        "price": 10000,
        "side": "Buy",
        "Type": "Limit",
        "Amount": "0.000",
        "Action": "Cancel"
      },
      {
        "pair": "BTC/USDT",
        "price": 10000,
        "side": "Sell",
        "Type": "Limit",
        "Amount": "0.000",
        "Action": "Cancel"
      },
      {
        "pair": "BTC/USDT",
        "price": 10000,
        "side": "Buy",
        "Type": "Limit",
        "Amount": "0.000",
        "Action": "Cancel"
      },
      {
        "pair": "BTC/USDT",
        "price": 10000,
        "side": "Sell",
        "Type": "Limit",
        "Amount": "0.000",
        "Action": "Cancel"
      }
    ];

    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: DataTable(
        columnSpacing: 5,
        dividerThickness: 0,
        headingRowHeight: 35,
        dataRowHeight: 30,
        columns: [
          DataColumn(
              label: Text(
            "Pair",
            style: TextStyle(
                fontSize: 12, color: white, fontWeight: FontWeight.bold),
          )),
          DataColumn(
              label: Text(
            "Price",
            style: TextStyle(
                fontSize: 12, color: white, fontWeight: FontWeight.bold),
          )),
          DataColumn(
              label: Text(
            "Side",
            style: TextStyle(
                fontSize: 12, color: white, fontWeight: FontWeight.bold),
          )),
          DataColumn(
              label: Text(
            "Type",
            style: TextStyle(
                fontSize: 12, color: white, fontWeight: FontWeight.bold),
          )),
          DataColumn(
              label: Text(
            "Amount",
            style: TextStyle(
                fontSize: 12, color: white, fontWeight: FontWeight.bold),
          )),
          DataColumn(
              label: Text(
            "Action",
            style: TextStyle(
                fontSize: 12, color: white, fontWeight: FontWeight.bold),
          )),
        ],
        rows: data.map((e) {
          return DataRow(cells: [
            DataCell(Text(
              e['pair'].toString(),
              style: TextStyle(color: white, fontWeight: FontWeight.bold),
            )),
            DataCell(Text(
              e['price'].toString(),
              style: TextStyle(color: white, fontWeight: FontWeight.bold),
            )),
            DataCell(Text(
              e['side'].toString(),
              style: TextStyle(
                  color: e['side'] == 'Buy' ? green : red,
                  fontWeight: FontWeight.bold),
            )),
            DataCell(Text(
              e['Type'].toString(),
              style: TextStyle(color: white, fontWeight: FontWeight.bold),
            )),
            DataCell(Text(
              e['Amount'].toString(),
              style: TextStyle(color: white, fontWeight: FontWeight.bold),
            )),
            DataCell(Text(
              e['Action'].toString(),
              style: TextStyle(color: white, fontWeight: FontWeight.bold),
            )),
          ]);
        }).toList(),
      ),
    );
  }
}

class tab2 extends StatelessWidget {
  const tab2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class tab3 extends StatelessWidget {
  const tab3({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
