import 'package:flutter/material.dart';
import 'package:nintendo_switch/components/MainScreen.dart';
import 'package:nintendo_switch/components/LeftJoyStick.dart';
import 'package:nintendo_switch/components/RightJoyStick.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: Center(
          child: Nintendo(),
        ),
      ),
    );
  }
}

class Nintendo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        LeftJoyStick(),
        MainScreen(),
        RightJoyStick(),
      ],
    );
  }
}
