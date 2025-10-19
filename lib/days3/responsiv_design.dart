import 'package:flutter/material.dart';

class ResponsiveCard extends StatelessWidget {
  const ResponsiveCard({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return ListView(
          scrollDirection: constraints.maxWidth < 700
              ? Axis.vertical
              : Axis.horizontal,
          children: [
            Text(
              constraints.maxWidth < 700
                  ? "This is the Mobile Size"
                  : "This is the Desktop Size",
            ),
            Container(color: Colors.blue, height: 220, width: 500),
            Container(color: Colors.red, height: 220, width: 500),
            Container(color: Colors.green, height: 220, width: 500),
          ],
        );
      },
    );
  }
}
