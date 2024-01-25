import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color(0xFF689237),
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
          backgroundColor: Color(0xFF689237) ,
          appBar: AppBar(
            backgroundColor: Color(0xFF8BC34A),
            centerTitle: true,
            elevation: 0,
            title: Text(
              "My App",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
            ),
          ),
          body: Center(child: Container(
            height: 300,
            width: 300,
            color: Color(0xFF4CAF50),
            alignment: Alignment.center,
            child: Container(
              height: 250,
              width: 250,
              color: Color(0xFFB2FF59),
              alignment: Alignment.center,
              child: Text("OOOO",style: TextStyle(color: Color(0xFF597F2C),fontWeight: FontWeight.w400,fontSize: 140,letterSpacing: -50,),),
            ),
          ),),
        ),
      ),
    );
  }
}
