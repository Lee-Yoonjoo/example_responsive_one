
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
        visualDensity: VisualDensity.adaptivePlatformDensity

        // There are minimumDensity -4.0 , maximumDensity 4.0, comfortable horizontal: -1.0, vertical: -1.0 , compact horizontal: -2.0, vertical: -2.0, standard horizontal: 0, vertical: 0.
        //  with adaptivePlatformDensity Returns a visual density that is adaptive based on the [defaultTargetPlatform].
        //  For desktop platforms, this returns [compact], and for other platforms,
        //  it returns a default-constructed [VisualDensity].

      ),

      home: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return const Home();

        }),
      debugShowCheckedModeBanner: false,
    );
  }
}
