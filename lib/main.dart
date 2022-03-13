import 'package:flutter/material.dart';

void main() {
  runApp(const Fineasy());
}

class Fineasy extends StatelessWidget {
  const Fineasy({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
    );
  }
}
