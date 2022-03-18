import 'package:flutter/material.dart';

class DetailWidget extends StatelessWidget {
   DetailWidget({Key? key, required this.index}) : super(key: key);

   int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
      ),
      body: _buildDetailView(context),
    );
  }

  Widget _buildDetailView(BuildContext context) {
    return SizedBox(
      width: 200.0,
      height: 300.0,
      child: Container(
        color: Colors.blue,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                index.toString(),
                style: const TextStyle(fontSize: 36.0, color: Colors.white),
              ),
            ],
          ),
        ),
      ),

    );
  }

  void changeData(int changedData){

    index = changedData;

  }
}
