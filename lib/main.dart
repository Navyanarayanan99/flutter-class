//manage state 14th video

import 'package:flutter/material.dart';
import 'package:inmakes/screens/card_example.dart';
import 'package:inmakes/screens/gesture_detect.dart';
import 'package:inmakes/screens/nav/nav_drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavExample()
    );
  }
}

// class CounterApp extends StatefulWidget {
//   const CounterApp({super.key});

//   @override
//   _CounterAppState createState() => _CounterAppState();
// }

// class _CounterAppState extends State<CounterApp> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Counter App'),
//       ),
//       body: Center(
//         child: Column(
//           children: [
//             Text('Counter : '),
//             Text(
//               '$_counter',
//               style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           _incrementCounter();
//         },
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }
