import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final heightIs = MediaQuery.of(context).size.height;
    final widthIs = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: heightIs * 0.4,
              width: widthIs * 0.6,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  colors: [Colors.blue.shade500, Colors.blue.shade200],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: heightIs * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("Name : "), Text("Haider Ali")],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Designation : "),
                      Text("Flutter Developer"),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: widthIs < 600 ? -(widthIs * 0.08) : 0,
              left: widthIs < 600 ? (widthIs * 0.6) / 2 - (widthIs * 0.08) : 0,
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://avatars.githubusercontent.com/u/9919?s=280&v=4",
                ),
                radius:widthIs < 600 ? widthIs * 0.08 : 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
