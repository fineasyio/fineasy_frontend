import 'package:flutter/material.dart';
import 'package:finan_easy/view/v_login.dart';

void main() {
  runApp(const Fineasy());
}

final login = Login();

class Fineasy extends StatelessWidget {
  const Fineasy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: login.paginaInicial(context),
    );
  }
}
