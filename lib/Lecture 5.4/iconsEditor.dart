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

var mainicon = Icons.search;
var coloricon = Colors.white;

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
            backgroundColor: Colors.white,
            shadowColor: Colors.black,
            elevation: 5,
            title: Text(
              "Icons Editor",
              style: TextStyle(
                  color: Colors.grey.shade900, fontWeight: FontWeight.w500),
            ),
            centerTitle: true,
          ),
          body: Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            width: double.maxFinite,
            color: Colors.transparent,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15),
                  height: 300,
                  width: double.maxFinite,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Icon(
                    mainicon,
                    size: 100,
                    color: coloricon,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  height: 50,
                  width: double.maxFinite,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: Text(
                    "Select Color",
                    style: TextStyle(
                        color: Colors.grey.shade700,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Container(
                  height: 120,
                  margin: EdgeInsets.only(bottom: 15),
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      padding: EdgeInsets.all(7),
                      child: Row(
                        children: List.generate(
                            colors.length,
                            (index) => InkWell(
                                onTap: () {
                                  setState(() {
                                    coloricon = colors[index];
                                  });
                                },
                                child: colorconatiners(colors[index]))),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  height: 50,
                  width: double.maxFinite,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: Text(
                    "Select Icon",
                    style: TextStyle(
                        color: Colors.grey.shade700,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Container(
                  height: 120,
                  margin: EdgeInsets.only(bottom: 15),
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      padding: EdgeInsets.all(7),
                      child: Row(
                          children: List.generate(
                              iconeditor.length,
                              (index) => InkWell(
                                  onTap: () {
                                    setState(() {
                                      mainicon = iconeditor[index];
                                    });
                                  },
                                  child: iconcontainer(iconeditor[index])))),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

Widget colorconatiners(Color color) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 5),
    height: 100,
    width: 95,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 3,
            spreadRadius: 3)
      ],
    ),
  );
}

Widget iconcontainer(IconData icons) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 5),
    height: 100,
    width: 95,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 3,
            spreadRadius: 3)
      ],
    ),
    child: Icon(
      icons,
      color: Colors.blue,
      size: 45,
    ),
  );
}
