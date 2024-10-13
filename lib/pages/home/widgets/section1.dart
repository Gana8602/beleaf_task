import 'package:be_crypto/pages/chart/chart.dart';
import 'package:be_crypto/utils.dart';
import 'package:flutter/material.dart';

class SectionOne extends StatelessWidget {
  const SectionOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width,
      // color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "BTC/USDT",
                    style: wtstyle,
                  ),
                  Text(
                    "-3.95%",
                    style: rtstyle,
                  )
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.arrow_drop_down,
                color: white,
              ),
              Container(
                height: 25,
                width: 35,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.green),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Center(
                  child: Text(
                    "10x",
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ),
              Spacer(),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ChartPage()));
                },
                child: Icon(
                  Icons.candlestick_chart_outlined,
                  color: Colors.white,
                  size: 35,
                ),
              ),
              Icon(
                Icons.more_horiz,
                color: Colors.white,
                size: 35,
              )
            ],
          )
        ],
      ),
    );
  }
}
