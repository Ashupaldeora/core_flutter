import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color(0xffBBBBBB),
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
            backgroundColor: const Color(0xffBBBBBB),
          ),
          body: Center(
            child: Container(
              height: 300,
              width: 300,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  color: Color(0xffFF9800), shape: BoxShape.circle),
              child: Stack(
                children: [
                  Positioned(
                    top: 90,
                    left: 55,
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: const BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                    ),
                  ),
                  Positioned(
                    top: 90,
                    left: 165,
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: const BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                    ),
                  ),
                  Positioned(
                      top: 200,
                    left: 150,
                    child: Container(
                    height: 80,
                    width: 80,

                    decoration: const BoxDecoration(
                        color: Colors.white,
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100))

                    ),
                  ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
