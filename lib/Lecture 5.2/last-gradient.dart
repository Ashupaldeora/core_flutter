import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.pink,
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

            backgroundColor: Colors.pink,
            elevation: 0,
            shadowColor: Colors.black,
            title: const Text(
              "Gradient",
              style:
              TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
            ),
            centerTitle: true,
          ),
          body: Center(
            child: Container(
              height: 70,
              width: 220,
              alignment: Alignment.center,

              decoration:  BoxDecoration(
                  color: Colors.white.withOpacity(1),
                  shape: BoxShape.rectangle,
                  borderRadius: const BorderRadius.all(Radius.circular(35)),
                     gradient: const LinearGradient(

                       begin: Alignment(0,-3),

                       colors: [
                         Color(0xffCD5099),
                         Color(0xffF93F7E),
                         Color(0xffF93F7E),

                         Color(0xffFF5669)


                       ]
                     ),
                  boxShadow:[ BoxShadow(

                      color: Colors.pinkAccent.withOpacity(0.7),
                      blurStyle: BlurStyle.normal,
                      blurRadius: 25,
                      offset: const Offset(0,15),
                      spreadRadius: 0

                  )


                  ] ),
              child: const Text(
                "Call to action",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                      letterSpacing: 1,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
