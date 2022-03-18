
import 'package:example_responsive_one/example_media_query/simple/menu_widget.dart';
import 'package:flutter/material.dart';

class ExampleTwoWidget extends StatelessWidget {
  const ExampleTwoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      drawer: media.width < 600
          ? Drawer(
              child: Menu(),
            )
          : null,
      body: Row(
        children: <Widget>[
          media.width > 600 ? Flexible(flex: 1, child: Menu()) : Container(),
          Flexible(
            flex: 3,
            child: Center(
                child: Text(
              "Size ${media.width} * ${media.height}",
              style: Theme.of(context).textTheme.titleMedium,
            )),
          ),
        ],
      ),
    );
  }
}
