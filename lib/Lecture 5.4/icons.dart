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
            backgroundColor: Colors.white,
            shadowColor: Colors.black,
            elevation: 5,
            leading: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            title: Text(
              "Icons",
              style: TextStyle(
                  color: Colors.grey.shade700, fontWeight: FontWeight.w500),
            ),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                    iconlist.length, (index) => containersofRow(index))),
          ),
        ));
  }
}

Widget containers({required Icon icon}) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    height: 130,
    width: 130,
    decoration: BoxDecoration(
      color: Colors.grey.shade200,
      borderRadius: BorderRadius.circular(15),
      boxShadow: [
        BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 10,
            spreadRadius: 0,
            offset: Offset(0, 10))
      ],
    ),
    child:
        //Icon(
        //   Icons.add,
        //   size: 35,
        //   color: Colors.grey.shade700,
        // ),
        icon,
  );
}

Widget containersofRow(int index) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        containers(icon: iconlist[index]['icon1']),
        containers(icon: iconlist[index]['icon2']),
        containers(icon: iconlist[index]['icon3']),
        containers(icon: iconlist[index]['icon4']),
        containers(icon: iconlist[index]['icon5']),
      ],
    ),
  );
}
