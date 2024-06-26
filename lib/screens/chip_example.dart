import 'package:flutter/material.dart';

class ChipWidgetExmple extends StatelessWidget {
  const ChipWidgetExmple({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Chip(label: Text('Flutter Chip', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
        elevation: 4,
        shadowColor: Colors.grey,
        ),
      ),
    );
  }
}