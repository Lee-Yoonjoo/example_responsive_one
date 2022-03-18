import 'package:flutter/material.dart';

class MainSmallPage extends StatefulWidget {
  final int currentIndex;
  final Function(int selectedIndex) onTapped;
  MainSmallPage(this.currentIndex, this.onTapped);

  @override
  _MainSmallPageState createState() => _MainSmallPageState();
}

class _MainSmallPageState extends State<MainSmallPage> {
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.currentIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(
          'Flow',
          style: TextStyle(
            fontFamily: 'SansitaSwashed',
            fontSize: 28,
            letterSpacing: 1,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              icon: CircleAvatar(
                radius: 16,
                backgroundColor: Colors.greenAccent,
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.blueGrey,
          child: Column(
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
        ),
      ),

      // PeopleView(),
    );
  }
}