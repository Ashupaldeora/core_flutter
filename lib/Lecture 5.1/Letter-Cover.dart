import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color(0xff39833C),
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
            backgroundColor: const Color(0xFF4CAF50),
            title: const Text(
              "Letter Cover",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
            ),
            centerTitle: true,
          ),
          body: Center(
            child: Container(height: 200,
            width: 200,
            decoration: const BoxDecoration(
              color: Color(0xFF4CAF50),
              border: Border.symmetric(
                vertical: BorderSide(width: 90,color: Color(0xFF4CAF50)),
                horizontal: BorderSide(width: 90, color: Color(0xff72C075))
              )
            ),),
          ),
        ),
      ),
    );
  }
}
