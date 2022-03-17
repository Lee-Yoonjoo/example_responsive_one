import 'package:example_responsive_one/example_one/stateful/DetailWidget.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {

  final int data;

  DetailPage(this.data);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: DetailWidget(widget.data),
    );
  }
}
