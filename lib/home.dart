
import 'package:example_responsive_one/responsive_classic_method/stateful/MasterDetailPage.dart';
import 'package:example_responsive_one/responsive_classic_method/stateless/master_detail_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key, }) : super(key: key);


  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var isLargeScreen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: FlatButton(
              color: Colors.grey,
              child: Text("Example_one_stateless"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return const MasterDetailWidget();
                }));
              },
            ),
          ),
          Center(
            child: FlatButton(
              color: Colors.grey,
              child: Text("Example_one_stateful"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return MasterDetailPage();
                }));
              },
            ),
          ),
        ],
      ),
    );
  }
}
