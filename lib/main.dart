import 'package:flutter/material.dart';
import 'home_page.dart';

void main() => runApp(myCalculator());

class myCalculator extends StatelessWidget {
  const myCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Basic Calculator",
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
    );
  }
}
