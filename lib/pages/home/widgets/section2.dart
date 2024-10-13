import 'package:be_crypto/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SectionTwo extends StatefulWidget {
  final TextEditingController usdt;
  final TextEditingController btc;
  const SectionTwo({super.key, required this.btc, required this.usdt});

  @override
  State<SectionTwo> createState() => _SectionTwoState();
}

class _SectionTwoState extends State<SectionTwo> {
  double _sliderValue = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: MediaQuery.of(context).size.width,
      // color: Colors.green,
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 1.6,
            height: 500,
            color: bg,
            // color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 30,
                        width: MediaQuery.of(context).size.width / 2.2,
                        child: Flexible(
                          child: DropdownButtonFormField(
                            isExpanded: true,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 0.2, horizontal: 4),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: grey2))),
                            items: [
                              DropdownMenuItem(
                                  child: Text(
                                "Auto-Borrow",
                                style: TextStyle(color: Colors.white),
                              ))
                            ],
                            onChanged: (value) {
                              print(value);
                            },
                            dropdownColor: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 30,
                        width: 55,
                        // decoration:,
                        child: Flexible(
                          child: DropdownButtonFormField(
                            isExpanded: true,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 0.2, horizontal: 4),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: grey2))),
                            items: [
                              DropdownMenuItem(
                                  child: Text(
                                "10x",
                                style: TextStyle(color: Colors.white),
                              ))
                            ],
                            onChanged: (value) {
                              print(value);
                            },
                            dropdownColor: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width / 3.3,
                        child: Center(
                          child: Text("Buy"),
                        ),
                        decoration: BoxDecoration(
                            color: button,
                            border: Border.all(color: grey2),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            )),
                        // child:
                      ),
                      Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width / 3.3,
                        child: Center(
                          child: Text(
                            "Sell",
                            style: TextStyle(color: grey2),
                          ),
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            )),

                        // child:
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width / 1.6,
                    child: Flexible(
                      child: DropdownButtonFormField(
                        iconDisabledColor: Colors.white,
                        iconEnabledColor: Colors.white,
                        isExpanded: true,
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.info_outline,
                              color: Colors.white,
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 0.2, horizontal: 4),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: grey2))),
                        items: [
                          DropdownMenuItem(
                              child: Center(
                            child: Text(
                              "Limited Order",
                              style: TextStyle(color: Colors.white),
                            ),
                          ))
                        ],
                        onChanged: (value) {
                          print(value);
                        },
                        dropdownColor: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 40,
                    child: Flexible(
                        child: TextField(
                      controller: widget.usdt,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 0.2, horizontal: 4),
                          suffix: Text(
                            "USDT",
                            style: TextStyle(color: Colors.white),
                          ),
                          // label: Text("5753.91"),
                          labelStyle: TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: grey2))),
                    )),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "='\$57537.91",
                    style: TextStyle(color: grey),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 40,
                    child: Flexible(
                        child: TextField(
                      controller: widget.btc,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 0.2, horizontal: 4),
                          suffix: Text(
                            "BTC",
                            style: TextStyle(color: Colors.white),
                          ),
                          // label: Text("5753.91"),
                          labelStyle: TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: grey2))),
                    )),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "=000000.00 BTC",
                    style: TextStyle(color: grey),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Slider with custom look
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            activeTrackColor: Colors.grey[800],
                            inactiveTrackColor: Colors.grey[800],
                            trackHeight: 4.0,
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 12.0),
                            thumbColor: Colors.amber, // Color for the circle
                            overlayColor: Colors.amber.withOpacity(0.2),
                            tickMarkShape: RoundSliderTickMarkShape(),
                            activeTickMarkColor: Colors.transparent,
                            inactiveTickMarkColor: Colors.grey,
                            valueIndicatorColor: Colors.amber,
                          ),
                          child: Slider(
                            value: _sliderValue,
                            min: 0,
                            max: 50,
                            divisions: 4, // 0%, 25%, 50%, 75%, 100%
                            onChanged: (value) {
                              setState(() {
                                _sliderValue = value;
                              });
                            },
                          ),
                        ),
                        // Labels under the slider
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('0%', style: TextStyle(color: Colors.grey)),
                            Text('25%', style: TextStyle(color: Colors.grey)),
                            Text('50%', style: TextStyle(color: Colors.grey)),
                            Text('75%', style: TextStyle(color: Colors.grey)),
                            Text('100%', style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 40,
                    child: Flexible(
                        child: TextField(
                      controller: widget.btc,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 0.2, horizontal: 4),
                          suffix: Text(
                            "USDT",
                            style: TextStyle(color: Colors.white),
                          ),
                          // label: Text("5753.91"),
                          labelStyle: TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: grey2))),
                    )),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        "Available",
                        style: TextStyle(color: grey),
                      ),
                      Spacer(),
                      Text(
                        "0 USDT",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.add_circle_outline_outlined,
                        color: button,
                        size: 15,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width / 1.6,
                    decoration: BoxDecoration(
                        color: button,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Center(
                      child: Text(
                        "Buy BTC",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 3.2,
            height: 450,
            // color: Colors.orange,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Price \n(USDT)",
                            style: TextStyle(fontSize: 12, color: grey),
                          ),
                          for (int i = 0; i < 6; i++)
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 4.0),
                              child: Text(
                                "57,945.25",
                                style: TextStyle(
                                    color: red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 11),
                              ),
                            )
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Text(
                            "Quantity\n(BTC)",
                            style: TextStyle(fontSize: 12, color: grey),
                          ),
                          for (int i = 0; i < 6; i++)
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 4.0),
                              child: Text(
                                "57,945.25",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 11),
                              ),
                            )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "0.000056",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "=\$57931.07",
                            style: TextStyle(color: grey, fontSize: 11),
                          )
                        ],
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 15,
                        color: grey,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          for (int i = 0; i < 6; i++)
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 4.0),
                              child: Text(
                                "57,945.25",
                                style: TextStyle(
                                    color: green,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 11),
                              ),
                            )
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          for (int i = 0; i < 6; i++)
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 4.0),
                              child: Text(
                                "57,945.25",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 11),
                              ),
                            )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 20,
                        width: 12,
                        decoration: BoxDecoration(
                            border: Border.all(color: grey2, width: 2)),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 12,
                            width: 10,
                            decoration: BoxDecoration(
                                border: Border.all(color: red, width: 2)),
                          ),
                          Container(
                            height: 12,
                            width: 10,
                            decoration: BoxDecoration(
                                border: Border.all(color: green, width: 2)),
                          )
                        ],
                      ),
                      Spacer(),
                      Container(
                        height: 30,
                        width: MediaQuery.of(context).size.width / 4.6,
                        child: Flexible(
                          child: DropdownButtonFormField(
                            isExpanded: true,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 0.2, horizontal: 4),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: grey2))),
                            items: [
                              DropdownMenuItem(
                                  child: Text(
                                "0.1",
                                style: TextStyle(color: Colors.white),
                              ))
                            ],
                            onChanged: (value) {
                              print(value);
                            },
                            dropdownColor: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = new Path();
    path.lineTo(size.width - 50, 0);
    path.lineTo(size.width - 90, size.height / 2);
    path.lineTo(size.width - 50, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
