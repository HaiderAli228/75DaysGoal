import 'package:flutter/material.dart';

class MediaQueryIs extends StatelessWidget {
  const MediaQueryIs({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    debugPrint("Height is : ${height.toString()}");
    debugPrint("Width is : ${width.toString()}");

    return Scaffold(
      body: ListView(
        scrollDirection: width < 600 ? Axis.vertical : Axis.horizontal,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            height: height * 0.3,
            width: width * 0.5,
            color: Colors.blue,
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: height * 0.3,
            width: width * 0.5,
            color: Colors.red,
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: height * 0.3,
            width: width * 0.5,
            color: Colors.green,
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: height * 0.3,
            width: width * 0.5,
            color: Colors.yellow,
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: height * 0.3,
            width: width * 0.5,
            color: Colors.purple,
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: height * 0.3,
            width: width * 0.5,
            color: Colors.cyanAccent,
          ),
        ],
      ),
    );
  }
}
