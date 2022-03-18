import 'package:example_responsive_one/example_layout_builder/main_big.dart';
import 'package:example_responsive_one/example_layout_builder/main_small.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return MainSmallPage(_currentIndex, (index) {
              setState(() {
                _currentIndex = index;
              });
            });
          } else {
            return MainBigPage(_currentIndex, (index) {
              setState(() {
                _currentIndex = index;
              });
            });
          }
        },
      ),
    );
  }
}