import 'package:example_responsive_one/responsive_classic_method/stateless/detail_widget.dart';
import 'package:example_responsive_one/home.dart';
import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
   ListWidget({Key? key, required this.count, required this.onItemSelected}) : super(key: key);

  final int count;
  int onItemSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List'),
      ),
      body: _buildListView(context),
    );
  }

  Widget _buildListView(BuildContext context) {
    List<int> numberList = List<int>.generate(count, (i) => i + 1);

    return ListView.builder(
      shrinkWrap: true,
      itemCount: numberList.length,
      itemBuilder: (context, index) {
        final item = numberList[index];

        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: InkWell(
              onTap: () {
                if (MediaQuery.of(context).size.width > 600) {

                  //With this structure, what I can do here? Nothing. The ListWidget and DetailWidget are already set when it is called on Home as StatelessWidget.

                  DetailWidget(index: numberList[index]).changeData(numberList[index]);
                  print(numberList[index]);
                  onItemSelected = numberList[index];

                } else {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DetailWidget(index: numberList[index])));
                }
              },
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(item.toString(), style: TextStyle(fontSize: 22.0),),
                  ),
                ],
              ),
            ),
          ),
        );



          ListTile(
          visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
          title: Text('$item'),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => DetailWidget(index: index)));
          },
          //subtitle: item.buildBody(context),
        );
      },
    );
  }
}
