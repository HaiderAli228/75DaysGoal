import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool toggle = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        colorScheme: ColorScheme.dark(
          primary: Colors.white,
          onPrimary: Colors.black,
          secondary: Colors.white,
          onSecondary: Colors.black,
          error: Colors.red,
          onError: Colors.white,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black,
          centerTitle: true,
          titleSpacing: 3,
        ),
        brightness: Brightness.dark,
        textTheme: TextTheme(
          bodyLarge: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 40,
          ),
        ),
      ),
      theme: ThemeData(
        brightness: Brightness.light,
        colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: Colors.purple,
          onPrimary: Colors.white,
          secondary: Colors.purple,
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.white,
          surface: Colors.white,
          onSurface: Colors.black,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.red,
          centerTitle: false,
          shadowColor: Colors.green,
          titleSpacing: 0,
          titleTextStyle: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        textTheme: TextTheme(
          bodyLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 100),
        ),
      ),
      themeMode: toggle ? ThemeMode.dark : ThemeMode.light,
      home: Scaffold(
        appBar: AppBar(title: Text("This is Title")),
        body: Center(
          child: InkWell(
            onTap: () {
              setState(() {
                toggle = !toggle;
              });
            },
            child: Container(
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(20),
              ),
              width: double.infinity,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(20),
              child: Text(
                toggle ? "Switch to Light" : "Switch to Dark",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
