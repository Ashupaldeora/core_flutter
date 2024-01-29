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
            elevation: 7,
            shadowColor: Colors.black,
            title: const Text(
              "Watch",
              style:
              TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
            ),
            centerTitle: false,
          ),
          body: Container(
            height: double.maxFinite,
            width: double.maxFinite,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xff48416A),
                      Color(0xff2294EF)
                    ]
                )
            ),
            child: Center(
              child: Container(
                height: 80,
                width: 220,
                alignment: Alignment.center,
                decoration:  BoxDecoration(
                    color: Colors.white.withOpacity(0.15),
                    shape: BoxShape.rectangle,
                    borderRadius: const BorderRadius.all(Radius.circular(35)),
                    border: Border.all(width: 0.05, color: Colors.white),
                    boxShadow:[ BoxShadow(
                        color: Colors.black.withOpacity(0.09),

                        blurRadius: 7,
                        offset: Offset(4,5),
                        spreadRadius: 3

                    )


                    ] ),
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
      ),
    );
  }
}
