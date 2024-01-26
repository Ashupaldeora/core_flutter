import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor:Color(0xFF87665B),
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
          appBar: AppBar(
            backgroundColor: const Color(0xFF87665B),
            title: const Text(
              "Mashal",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
            ),
            centerTitle: true,
          ),
          body:
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 190,
              width: 140,
              decoration: const BoxDecoration(
                color: Color(0xFF795548),
                border: Border.symmetric(
                  vertical: BorderSide(color: Colors.white, width: 40),
                  horizontal: BorderSide(
                    color: Color(0xFF87665B),
                    width: 30,
                  ),
                ),
              ),
              child: Text("🔥",style: TextStyle(fontSize: 50, height: -2.3),)
          ),

          ),

        ),

        )
    );
  }
}
