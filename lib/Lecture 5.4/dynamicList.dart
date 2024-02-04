import 'package:core_flutter/Lecture%205.4/containerList.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../temp.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color(0xff54759E),
  ));
  runApp(const app());
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
            backgroundColor: const Color(0xffEEEEEE),
            appBar: AppBar(
              backgroundColor: const Color(0xff244D61),
              title: const Text(
                "Dynamic List",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              ),
              centerTitle: true,
            ),
            body: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                width: double.maxFinite,
                decoration: BoxDecoration(color: Colors.transparent),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                    dynamic.length,
                    (index) => containers(
                        index: index,
                        colors: (index % 2 == 0)
                            ? Color(0xff5689C0)
                            : Color(0xff75E2FF)),
                  ),
                ),
              ),
            ),
            floatingActionButton: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FloatingActionButton(
                      backgroundColor: Color(0xff244D61),
                      onPressed: () {
                        setState(() {
                          int length = dynamic.length + 1;

                          dynamic.add(length);
                        });
                      },
                      child: Icon(Icons.add),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    FloatingActionButton(
                      backgroundColor: Color(0xff244D61),
                      child: Icon(Icons.remove),
                      onPressed: () {
                        setState(() {
                          dynamic.remove(dynamic[dynamic.length - 1]);
                        });
                      },
                    )
                  ],
                )
              ],
            )));
  }
}

Widget containers({required int index, Color? colors}) {
  return Row(
    children: [
      Container(
        height: 110,
        width: 390,
        margin: const EdgeInsets.symmetric(vertical: 7),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: colors, borderRadius: BorderRadius.circular(10)),
        child: Text(
          "${dynamic[index]}",
          style: const TextStyle(
              color: Colors.white, fontSize: 35, fontWeight: FontWeight.w600),
        ),
      )
    ],
  );
}
