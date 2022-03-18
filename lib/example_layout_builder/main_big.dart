import 'package:flutter/material.dart';

class MainBigPage extends StatefulWidget {
  final int currentIndex;
  final Function(int selectedIndex) onTapped;

  MainBigPage(this.currentIndex, this.onTapped);

  @override
  _MainBigPageState createState() => _MainBigPageState();
}

class _MainBigPageState extends State<MainBigPage> {
  int _index = 0;

  @override
  void initState() {
    super.initState();
    _index = widget.currentIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: double.maxFinite,
                    height: 150,
                    color: Colors.blueGrey,
                    child: Center(
                      child: Text(
                        'Menu 1 ',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'SansitaSwashed',
                          fontSize: 32,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 5,
                    width: double.maxFinite,
                    color: Colors.white60,
                  ),
                  Container(
                    width: double.maxFinite,
                    height: 150,
                    color: Colors.blueGrey,
                    child: Center(
                      child: Text(
                        'Menu 2 ',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'SansitaSwashed',
                          fontSize: 32,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 5,
                    width: double.maxFinite,
                    color: Colors.white60,
                  ),
                  Container(
                    width: double.maxFinite,
                    height: 150,
                    color: Colors.blueGrey,
                    child: Center(
                      child: Text(
                        'Menu 3 ',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'SansitaSwashed',
                          fontSize: 32,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 5,
                    width: double.maxFinite,
                    color: Colors.white60,
                  ),
                ],
              )),
          Expanded(
            flex: 3,
            child: Container(
              width: double.maxFinite,
              height: 150,
              color: Colors.blueGrey,
              child: Center(
                child: Text(
                  'Menu 3 ',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'SansitaSwashed',
                    fontSize: 32,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
