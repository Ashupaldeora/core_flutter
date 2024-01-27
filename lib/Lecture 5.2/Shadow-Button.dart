import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color(0xff004F48),
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
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: const Color(0xff009688),
            title: const Text(
              "Dark Shadow Button",
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
              decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  // border: Border.all(width: 1.2, color: Colors.red),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff009688),
                      blurStyle: BlurStyle.normal,
                      blurRadius: 5,
                      spreadRadius: 3,
                    ),
                    BoxShadow(
                      color: Color(0xff009688),
                      blurStyle: BlurStyle.normal,
                      blurRadius: 15,
                      spreadRadius: 5,
                      offset: Offset(0, 5)
                    ),
                  ]),
              child: const Text(
                "Tap",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w300),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
