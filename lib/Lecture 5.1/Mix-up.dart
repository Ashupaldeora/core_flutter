import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color(0xFFBF3D3D),
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFFF5252),
          title: const Text(
            "Mix-up",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
        ),
        body: Align(
          alignment: Alignment.center,
          child: Container(
            height: 412,
            width: 412,
            alignment: Alignment.bottomRight,
            decoration: const BoxDecoration(color: Color(0xFf2196F3)),
            child: Container(
              height: 360,
              width: 350,
              alignment: Alignment.bottomRight,
              decoration: const BoxDecoration(color: Color(0xFFFFFF00)),
              child: Container(
                height: 300,
                width: 300,
                alignment: Alignment.topLeft,
                decoration: const BoxDecoration(color: Color(0xFFE91E63)),
                child: Container(
                  height: 250,
                  width: 250,
                  alignment: Alignment.topLeft,
                  decoration: const BoxDecoration(color: Color(0xFFFF9800)),
                  child: Container(
                    height: 200,
                    width: 200,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(color: Color(0xFF4CAF50)),
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: const BoxDecoration(color: Color(0xFF64FFDA)),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
