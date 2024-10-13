import 'package:be_crypto/controller/ob_controller.dart';
import 'package:be_crypto/pages/chart/widget/chartview.dart';
import 'package:be_crypto/pages/chart/widget/orderbook.dart';
import 'package:be_crypto/pages/home/widgets/section3.dart';
import 'package:be_crypto/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:http/http.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ChartPage extends StatefulWidget {
  const ChartPage({super.key});

  @override
  State<ChartPage> createState() => _ChartPageState();
}

class _ChartPageState extends State<ChartPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabcontroller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabcontroller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
          iconTheme: const IconThemeData(color: white),
          backgroundColor: bg,
          title: const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.ce,
            children: [
              Icon(
                Icons.menu_open_outlined,
                size: 25,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "BTC/USDT",
                    style: wtstyle,
                  ),
                  Row(
                    children: [
                      Text(
                        "-3.95%",
                        style: TextStyle(
                            fontSize: 12,
                            color: red,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "-3.95%",
                        style: TextStyle(
                            fontSize: 12,
                            color: red,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
              Icon(
                Icons.arrow_drop_down,
                color: white,
              ),
            ],
          )),
      body: Column(
        children: [
          Container(
            height: 500,
            width: MediaQuery.of(context).size.width,
            child: ChartView(),
          ),
          TabBar(
            indicatorColor: Colors.amber,
            dividerColor: grey.withOpacity(0.2),
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            controller: _tabcontroller,
            tabs: [
              Tab(
                child: Text(
                  "Order book",
                  style: TextStyle(color: white, fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  "Trades",
                  style: TextStyle(color: white, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabcontroller,
              children: [OrderBook(), tab2()],
            ),
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.all(Radius.circular(25))),
          child: Center(
            child: Text(
              "Trade",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}

class Tab2 extends StatelessWidget {
  const Tab2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Webview extends StatefulWidget {
  const Webview({super.key});

  @override
  State<Webview> createState() => _WebviewState();
}

class _WebviewState extends State<Webview> {
  final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(Uri.parse(
        "https://exchangedemo.beleaftechnologies.com/tradeview/BTC_USDT"));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
