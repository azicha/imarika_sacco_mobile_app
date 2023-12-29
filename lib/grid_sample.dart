import 'package:flutter/material.dart';

class GridSample extends StatelessWidget {
  const GridSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 0,
        mainAxisSpacing: 0,
        crossAxisCount: 3,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(4),
            color: Colors.teal[100],
            child: const Center(
              child: Text("1"),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(4),
            color: Colors.teal[200],
            child: const Center(
              child: Text('2'),
            ),
          ),
          Container(
            height: 5,
            padding: const EdgeInsets.all(4),
            color: Colors.teal[300],
            child: const Center(
              child: Text('3'),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(4),
            color: Colors.teal[400],
            child: const Center(
              child: Text('4'),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(4),
            color: Colors.teal[500],
            child: const Center(
              child: Text('5'),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(4),
            color: Colors.teal[600],
            child: const Center(
              child: Text('6'),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(4),
            color: Colors.teal[700],
            child: const Center(
              child: Text('7'),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(4),
            color: Colors.teal[800],
            child: const Center(
              child: Text('8'),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(4),
            color: Colors.teal[900],
            child: const Center(
              child: Text('9'),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(4),
            color: Colors.teal[100],
            child: const Center(
              child: Text('DEL'),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(4),
            color: Colors.teal[200],
            child: const Center(
              child: Text('0'),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(4),
            color: Colors.teal[300],
            child: const Center(
              child: Text('OK'),
            ),
          ),
        ],
      ),
    );
  }
}
