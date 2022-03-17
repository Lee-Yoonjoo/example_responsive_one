import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          height: 150.0,
          color: Colors.green,
          child: const Center(child: Text("Yoon Joo, Lee")),
        ),
        ListTile(
          title: const Text("Home"),
          onTap: () {},
        ),
        ListTile(
          title: const Text("Profile"),
          onTap: () {},
        ),
        ListTile(
          title: const Text("Calls"),
          onTap: () {},
        ),
        ListTile(
          title: const Text("Messages"),
          onTap: () {},
        ),
      ],
    );
  }
}