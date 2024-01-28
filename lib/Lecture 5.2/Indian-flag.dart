import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color(0xff1970B6),
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
            backgroundColor: const Color(0xff2193EE),
            elevation: 10,
            shadowColor: Colors.black,
            title: const Text(
              "An Indian Flag",
              style:
              TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
            ),
            centerTitle: true,
          ),
          body: Container(
            height: double.maxFinite,
            width: double.maxFinite,

            decoration: BoxDecoration(
              gradient: LinearGradient(
                    begin: Alignment.topCenter,
                colors: [

                  Color(0xff2196F3),
                  Color(0xff3C59BC)
                ]
              )
            ),
            child: Center(
              child: Container(
                height: 140,
                width: 250,
                alignment: Alignment.center,
                decoration:  BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,

                  border: Border.all(width: 1.5, color: Colors.white),
                  gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Color(0xffFF5722),
                        Color(0xffFF5722),
                    Colors.white,

                    Color(0xff388E3C),
                        Color(0xff388E3C)
                  ]),

                ),
                child: const Text(
                  "✴",
                  style: TextStyle(
                      color: Color(0xff00008B),
                      fontSize: 55,

                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
