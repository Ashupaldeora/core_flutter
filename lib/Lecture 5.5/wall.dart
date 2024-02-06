import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color(0xff54759E),
  ));
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: appBar(),
        body: SingleChildScrollView(
          child: Column(
              children: List.generate(
                  8, (index) => (index % 2 == 0) ? oddeven[1] : oddeven[0])),
        ),
      ),
    );
  }
}

Widget container(double width) {
  return Container(
    margin: EdgeInsets.only(top: 10, bottom: 5),
    height: 90,
    width: width,
    decoration: BoxDecoration(color: Color(0xff5D4037)),
  );
}

List oddeven = [
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      container(100),
      container(185),
      container(100),
    ],
  ),
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      container(130),
      container(125),
      container(130),
    ],
  )
];

AppBar appBar() {
  return AppBar(
    backgroundColor: Color(0xff212121),
    toolbarHeight: 80,
    title: const Text(
      "THE WALL",
      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
    ),
    centerTitle: true,
  );
}
