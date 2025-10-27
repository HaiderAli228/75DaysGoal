import 'dart:io' show Platform;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PlatformDetectionClass extends StatefulWidget {
  const PlatformDetectionClass({super.key});

  @override
  State<PlatformDetectionClass> createState() => _PlatformDetectionClassState();
}

class _PlatformDetectionClassState extends State<PlatformDetectionClass> {
  String platformTypeIfElse() {
    if (kIsWeb) {
      return "This is Web";
    } else if (Platform.isAndroid) {
      return "This is android";
    } else if (Platform.isIOS) {
      return "This is ios";
    } else if (Platform.isLinux) {
      return "This is Linux";
    } else if (Platform.isMacOS) {
      return "This is MacOS";
    } else if (Platform.isWindows) {
      return "This is Window";
    } else {
      return "This is nothing";
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        centerTitle: true,
        title: Text(
          " Detect Platform ",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
      ),
      body: Center(child: Text(platformTypeIfElse())),
    );
  }
}



