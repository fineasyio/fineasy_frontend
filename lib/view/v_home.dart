import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(50),
              color: Colors.amber,
            ),
            Container(
              padding: EdgeInsets.all(50),
              color: Colors.green,
            ),
            Container(
              padding: EdgeInsets.all(50),
              color: Colors.blue,
            ),
            Container(
              padding: EdgeInsets.all(50),
              color: Colors.red,
            ),
          ],
        ));
  }
}
