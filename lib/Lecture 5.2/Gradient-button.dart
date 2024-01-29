import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color(0xff312D48),
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xff48416A),
          appBar: AppBar(
            backgroundColor: const Color(0xff48416A),
            elevation: 10,
            shadowColor: Colors.black,
            title: const Text(
              "Gradient Button",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
            ),
            centerTitle: true,
          ),
          body: Center(
            child: Container(
              height: 80,
              width: 250,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: const BorderRadius.all(Radius.circular(35)),
                border: Border.all(width: 1.5, color: Colors.white),
                gradient: const LinearGradient(colors: [
                  Color(0xff942EB4),
                  Color(0xff615BD0),
                  Color(0xff3287EA)
                ]),
              ),
              child: const Text(
                "Flutter",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
