import 'package:flutter/material.dart';
import 'package:travel_flutter_mobile/page/homePage.dart';

class BottomNaVBarPage extends StatefulWidget {
  @override
  _BottomNaVBarPageState createState() => _BottomNaVBarPageState();
}

class _BottomNaVBarPageState extends State<BottomNaVBarPage> {
  int value = 0;
  var data = [
    HomePage(),
    Center(
      child: Text('Loading ...'),
    ),
    Center(
      child: Text('Loading ...'),
    ),
    Center(
      child: Text('Loading...'),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red,
        showSelectedLabels: false,
        currentIndex: value,
        unselectedIconTheme: IconThemeData(
          color: Colors.grey,
        ),
        selectedItemColor: Colors.indigo,
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.local_offer_rounded),
          ),
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.message_rounded),
          ),
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(
              Icons.favorite_border,
            ),
          ),
        ],
      ),
      body: data[value],
    );
  }
}
