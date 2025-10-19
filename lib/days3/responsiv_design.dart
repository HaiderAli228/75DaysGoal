import 'package:flutter/material.dart';

class ResponsiveCard extends StatelessWidget {
  const ResponsiveCard({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Checking available width
        if (constraints.maxWidth < 700) {
          // Mobile
          return Column(
            children: [
              Container(color: Colors.blue, height: 100, width: 100),
              SizedBox(height: 10),
              Container(color: Colors.red, height: 100, width: 100),
              Container(color: Colors.green, height: 100, width: 100),
            ],
          );
        } else {
          // Tablet or Desktop
          return Row(
            children: [
              Container(color: Colors.blue, height: 100, width: 100),
              SizedBox(height: 10),
              Container(color: Colors.red, height: 100, width: 100),
              Container(color: Colors.green, height: 100, width: 100),
            ],
          );
        }
      },
    );
  }
}
