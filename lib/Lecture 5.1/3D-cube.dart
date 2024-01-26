import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color(0xff007066),
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
            backgroundColor: const Color(0xff009688),
            title: const Text(
              "3D Cube",
              style:
              TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
            ),
            centerTitle: true,
          ),
          body: Center(
            child: Container(height: 200,
              width: 200,
              decoration: const BoxDecoration(
                  color: Color(0xff009688),
                  border: Border.symmetric(
                      vertical: BorderSide(width: 35,color: Color(0xff33ABA0)),
                      horizontal: BorderSide(width: 35, color: Color(0xff4DB6AC))
                  )
              ),),
          ),
        ),
      ),
    );
  }
}
