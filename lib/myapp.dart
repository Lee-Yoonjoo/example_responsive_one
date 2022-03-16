
import 'package:example_responsive_one/home.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Responsive App ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return const Home();

        }),
      debugShowCheckedModeBanner: false,
    );
  }
}
