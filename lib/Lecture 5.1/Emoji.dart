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
          body:Stack(children: [
          Center(

              child: Container(
                height: 300,
                width: 300,
                alignment: Alignment(0,-5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(width: 35,color: Colors.orange)
                ),

                child: Stack(children: [
                  Container(
                  height: 222,
                  width: 225,
                  alignment: Alignment(-0.7,-0.2),

                  decoration: BoxDecoration(

                    color: Colors.orange,
                    shape: BoxShape.circle,

                  ),
                  child: Container(
                    width: 80,
                    height: 80,
                     // alignment: Alignment(2,1),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle
                    ),


                  ),

                ),
                   Positioned(top: 55,
                       left: 125,
                       child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle
                      ),
                    )),

                ]),

              ),


          ),
      Positioned(top: 710,
          child: Container(
        height: 80,
        width: 420,
        decoration: BoxDecoration(
          color: Colors.orange,
          shape: BoxShape.rectangle
        ),
            child: Center(child:Text("Emoji",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 30),),)

      ))
    ]),

        ),),
    );



  }
}
