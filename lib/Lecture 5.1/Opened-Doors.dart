import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color(0xff131313),
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
            backgroundColor: const Color(0xff191919),
            title: const Text(
              "Opened Door",
              style:
              TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
            ),
            centerTitle: true,
          ),
          body: Center(
            child: Container(height: 200,
              width: 200,
              decoration: const BoxDecoration(
                  color: Colors.black,
                  border: Border.symmetric(
                      vertical: BorderSide(width: 60,color: Color(0xffEEEEEE)),
                      horizontal: BorderSide(width: 50, color: Colors.black)
                  )
              ),),
          ),
        ),
      ),
    );
  }
}
