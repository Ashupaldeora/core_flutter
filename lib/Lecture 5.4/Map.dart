import 'package:core_flutter/Lecture%205.4/containerList.dart';
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
          backgroundColor: Color(0xff2196F3),
          leading: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          title: Text(
            "Map",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
        ),
        body: Container(
            // margin: EdgeInsets.only(bottom: 200),

            width: double.maxFinite,
            decoration: BoxDecoration(color: Colors.pink),
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                      containers.length,
                      (index) => conticons(
                          iconname: containers[index]['name'],
                          icon: containers[index]['icon']))),
            )),
      ),
    );
  }
}

Widget conticons({required String iconname, required Icon icon}) {
  return Container(
      margin: EdgeInsets.symmetric(vertical: 18),
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 85,
      width: double.maxFinite,
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "$iconname",
            style: TextStyle(fontSize: 25),
          ),
          icon
          // Icon(
          //   Icons.exit_to_app,
          //   size: 30,
          // ),
        ],
      ));
}
