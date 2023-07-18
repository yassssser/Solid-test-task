import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final random = Random();
  int redColor = 255;
  int greenColor = 255;
  int blueColor = 255;
  double opacity = 1;

  changeBackGroundColor() {
    setState(() {
      redColor = random.nextInt(255);
      greenColor = random.nextInt(255);
      blueColor = random.nextInt(255);
      opacity = random.nextDouble();
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => changeBackGroundColor(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Test Task".toUpperCase()),
          centerTitle: true,
        ),
        backgroundColor:
            Color.fromRGBO(redColor, greenColor, blueColor, opacity),
        body: const Center(
          child: Text("Hello there",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 22,
              )),
        ),
      ),
    );
  }
}
