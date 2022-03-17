
import 'package:example_responsive_one/example_one/stateless/detail_widget.dart';
import 'package:example_responsive_one/example_one/stateless/list_widget.dart';
import 'package:flutter/material.dart';

class MasterDetailWidget extends StatefulWidget {
  const MasterDetailWidget({Key? key, }) : super(key: key);


  @override
  State<MasterDetailWidget> createState() => _MasterDetailWidgetState();
}

class _MasterDetailWidgetState extends State<MasterDetailWidget> {
  var isLargeScreen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(builder: (context, orientation) {

        if (MediaQuery.of(context).size.width > 600) {
          isLargeScreen = true;
        } else {
          isLargeScreen = false;
        }

        return Row(children: <Widget>[
          Expanded(child: ListWidget(count: 10, onItemSelected: 0)) ,
          isLargeScreen ? Expanded(child: DetailWidget(index: 0)) : Container() ,
        ]);
      }),
    );
  }
}
