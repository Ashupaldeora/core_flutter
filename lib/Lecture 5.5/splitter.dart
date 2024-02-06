import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.transparent,
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
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 400,
                  color: Colors.orange,
                  child: Row(
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                              children: List.generate(num.length,
                                  (index) => conatiners(num[index]))),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  height: 400,
                  color: Colors.red,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                          num.length, (index) => rowcontainers(num[index])),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

AppBar appBar() {
  return AppBar(
    backgroundColor: Color(0xff212121),
    toolbarHeight: 80,
    title: const Text(
      "SPILTTER",
      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
    ),
    centerTitle: true,
  );
}

Widget conatiners(int number) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 10),
    height: 80,
    alignment: Alignment.center,
    color: Color(0xffFFC107),
    width: double.maxFinite,
    child: Text("$number"),
  );
}

Widget rowcontainers(int number) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 10),
    height: double.maxFinite,
    alignment: Alignment.center,
    color: Color(0xffFFC107),
    width: 80,
    child: Text("$number"),
  );
}

List num = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
