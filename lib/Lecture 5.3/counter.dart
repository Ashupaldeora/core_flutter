import 'package:flutter/material.dart';

void main() {
  runApp(const Counter());
}

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Counting App',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Center(
          child: Text(
            '$count',
            style: TextStyle(fontSize: 50),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              count++;
              print('$count');
            });
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

int count = 0;
