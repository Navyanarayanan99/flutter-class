import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  const MyStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
             Container(
              width: 200,
              height: 200,
              color: Colors.orange,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
              Container(
              width: 70,
              height: 70,
              color: Colors.yellow,
            ),
            FlutterLogo()
          ],
        ),
      ),
    );
  }
}
