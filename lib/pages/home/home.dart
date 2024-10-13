import 'package:be_crypto/pages/home/Earn.dart';
import 'package:be_crypto/pages/home/Trade.dart';
import 'package:be_crypto/pages/home/assets.dart';
import 'package:be_crypto/pages/home/honmepage.dart';
import 'package:be_crypto/pages/home/market.dart';
import 'package:be_crypto/pages/home/widgets/section1.dart';
import 'package:be_crypto/pages/home/widgets/section2.dart';
import 'package:be_crypto/pages/home/widgets/section3.dart';
import 'package:be_crypto/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;
  List<Widget> pages = [HomePgaeee(), Market(), Trade(), Earn(), Assets()];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bg,
        body: pages[pageIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: pageIndex,
          unselectedItemColor: white,
          selectedItemColor: icon,
          backgroundColor: bg,
          // iconSize: 15,
          onTap: (value) {
            setState(() {
              pageIndex = value;
            });
          },
          elevation: 2,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.auto_graph), label: "Markets"),
            BottomNavigationBarItem(
                icon: Icon(Icons.token_rounded), label: "Trade"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.graph_square), label: "Earn"),
            BottomNavigationBarItem(icon: Icon(Icons.wallet), label: "Assets"),
          ],
        ),
      ),
    );
  }
}
