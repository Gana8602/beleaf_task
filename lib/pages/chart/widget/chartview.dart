import 'package:be_crypto/pages/chart/chart.dart';
import 'package:be_crypto/utils.dart';
import 'package:flutter/material.dart';

class ChartView extends StatefulWidget {
  const ChartView({super.key});

  @override
  State<ChartView> createState() => _ChartViewState();
}

class _ChartViewState extends State<ChartView>
    with SingleTickerProviderStateMixin {
  late TabController _tab;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tab = TabController(length: 1, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
            indicatorColor: Colors.amber,
            dividerColor: grey.withOpacity(0.2),
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            controller: _tab,
            tabs: [
              Tab(
                child: Text(
                  "Chart",
                  style: TextStyle(color: white, fontWeight: FontWeight.bold),
                ),
              )
            ]),
        Expanded(
          child: TabBarView(
            controller: _tab,
            children: [Charttt()],
          ),
        ),
      ],
    );
  }
}

class Charttt extends StatelessWidget {
  const Charttt({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          width: MediaQuery.of(context).size.width,
          // color: Colors.blueGrey,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "54,299.80",
                      style: TextStyle(
                          fontSize: 30,
                          color: red,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text(
                          "=\$54,299.80",
                          style: TextStyle(color: white),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "-7.68%",
                          style: TextStyle(color: red),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "24h high",
                    style: TextStyle(color: grey),
                  ),
                  Text(
                    "58,867.20",
                    style: TextStyle(color: white, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  Text(
                    "24h low",
                    style: TextStyle(color: grey),
                  ),
                  Text(
                    "58,867.20",
                    style: TextStyle(color: white, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "24h Vol(BTC)",
                    style: TextStyle(color: grey),
                  ),
                  Text(
                    "58,867.20",
                    style: TextStyle(color: white, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  Text(
                    "24h Turnover(USDT)",
                    style: TextStyle(color: grey),
                  ),
                  Text(
                    "58,867.20",
                    style: TextStyle(color: white, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              // SizedBox(
              //   width: 30,
              // ),
            ],
          ),
        ),
        Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            child: Webview()),
      ],
    );
  }
}
