import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../temp.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color(0xff54759E),
  ));
  runApp(app());
}

int count = 0;

class app extends StatefulWidget {
  const app({super.key});

  @override
  State<app> createState() => _appState();
}

class _appState extends State<app> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffEEEEEE),
        appBar: AppBar(
          backgroundColor: Color(0xff54759E),
          leading: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          title: Text(
            "Calc",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Container(
          // margin: EdgeInsets.only(bottom: 200),

          width: double.maxFinite,
          decoration: BoxDecoration(color: Colors.transparent),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 170),
                decoration: BoxDecoration(color: Colors.transparent),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "$count",
                      style: TextStyle(color: Colors.grey, fontSize: 90),
                    ),
                  ],
                ),
              ),
              Container(
                height: 250,
                margin: EdgeInsets.only(top: 50),
                decoration: BoxDecoration(color: Colors.transparent),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              count -= 2;
                            });
                          },
                          child: Container(
                            height: 60,
                            width: 150,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Color(0xff54759E),
                                borderRadius: BorderRadius.circular(10)),
                            child: Text(
                              "-2",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 35),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              count -= 4;
                            });
                          },
                          child: Container(
                            height: 60,
                            width: 150,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Color(0xff54759E),
                                borderRadius: BorderRadius.circular(10)),
                            child: Text(
                              "-4",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 35),
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              count += 2;
                            });
                          },
                          child: Container(
                            height: 60,
                            width: 150,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Color(0xff54759E),
                                borderRadius: BorderRadius.circular(10)),
                            child: Text(
                              "+2",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 35),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              count += 4;
                            });
                          },
                          child: Container(
                            height: 60,
                            width: 150,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Color(0xff54759E),
                                borderRadius: BorderRadius.circular(10)),
                            child: Text(
                              "+4",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 35),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
