import 'package:flutter/material.dart';

import '../../utils.dart';
import 'widgets/section1.dart';
import 'widgets/section2.dart';
import 'widgets/section3.dart';

class HomePgaeee extends StatefulWidget {
  const HomePgaeee({super.key});

  @override
  State<HomePgaeee> createState() => _HomePgaeeeState();
}

class _HomePgaeeeState extends State<HomePgaeee>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  TextEditingController usdt = TextEditingController();
  TextEditingController btc = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    usdt.text = "5753.91";
    btc.text = "7234.32";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Spot",
                    style: TextStyle(
                        fontSize: 14,
                        color: white.withOpacity(0.6),
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Isolated Margin",
                    style: wtstyle,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(
                    Icons.arrow_drop_down,
                    color: white,
                  )
                ],
              ),
              SectionOne(),
              SectionTwo(
                usdt: usdt,
                btc: btc,
              ),
              Sectionthree(
                tabb: _tabController,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
