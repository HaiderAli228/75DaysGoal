import 'package:flutter/material.dart';

class ResponsiveCard extends StatelessWidget {
  const ResponsiveCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 100,
        height: 50,
        color: Colors.grey,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text('Responsive Widget', style: TextStyle(fontSize: 40)),
        ),
      ),
    );
  }
}

// Row(
// children: [
// Flexible(
// flex: 2,
// fit: FlexFit.loose,
// child: Container(
// height: 100,
// color: Colors.red,
// child: Center(
// child: Text(
// "This Flex",
// style: TextStyle(
// color: Colors.white,
// fontSize: 24,
// fontWeight: FontWeight.bold,
// ),
// ),
// ),
// ),
// ),
// CircleAvatar(
// backgroundImage: NetworkImage("https://media.licdn.com/dms/image/v2/D5603AQHYSHdsPjOHYQ/profile-displayphoto-shrink_400_400/B56ZaUfUZUHgAg-/0/1746247961555?e=1762387200&v=beta&t=FlHL7QaFqmceFdpDxLce68OU_XQTFBdO3GK30Y3bm3Q"),
// radius: 40,
// ),
// Expanded(
// flex: 2,
// child: Container(
// height: 100,
// color: Colors.blue,
// child: Center(
// child: Text(
// "This Expanded",
// style: TextStyle(
// color: Colors.white,
// fontSize: 24,
// fontWeight: FontWeight.bold,
// ),
// ),
// ),
// ),
// ),
// ],
// ),
// }import 'package:flutter/material.dart';
//
// class ResponsiveCard extends StatelessWidget {
//   const ResponsiveCard({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return OrientationBuilder(
//       builder: (context, orientation) {
//         return ListView(
//           scrollDirection: orientation == Orientation.portrait
//               ? Axis.vertical
//               : Axis.horizontal,
//           children: [
//             Text(
//               orientation == Orientation.portrait
//                   ? "This is the Mobile Size"
//                   : "This is the Desktop Size",
//             ),
//             Container(color: Colors.blue, height: 220, width: 500),
//             Container(color: Colors.red, height: 220, width: 500),
//             Container(color: Colors.green, height: 220, width: 500),
//           ],
//         );
//       },
//     );
//   }
// }

//================================================ LayoutBuilder =====================================
// import 'package:flutter/material.dart';
//
// class ResponsiveCard extends StatelessWidget {
//   const ResponsiveCard({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (context, constraints) {
//         return ListView(
//           scrollDirection: constraints.maxWidth < 700
//               ? Axis.vertical
//               : Axis.horizontal,
//           children: [
//             Text(
//               constraints.maxWidth < 700
//                   ? "This is the Mobile Size"
//                   : "This is the Desktop Size",
//             ),
//             Container(color: Colors.blue, height: 220, width: 500),
//             Container(color: Colors.red, height: 220, width: 500),
//             Container(color: Colors.green, height: 220, width: 500),
//           ],
//         );
//       },
//     );
//   }
// }
