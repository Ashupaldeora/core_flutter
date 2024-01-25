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
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: const Color(0xFFFF5252),
            centerTitle: true,
            elevation: 0,
            title: const Text(
              "Mission of RNW",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
            ),
          ),
          body: Center(
            child: Container(
              height: 100,
              width: 330,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  color: Color(0xFFFCC8C8),
                  border: Border(
                      left: BorderSide(color: Color(0xFFFF5252), width: 12))),
              child:const Text.rich(TextSpan(children: [
                TextSpan(
                    text: 'Shaping "Skills" for "Scaling" higher\n',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),
                TextSpan(
                    text: '-RNW',
                    style: TextStyle(fontWeight: FontWeight.w400,fontSize: 17))
              ])),
            ),
          ),
        ),
      ),
    );
  }
}
