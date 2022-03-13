// ignore_for_file: deprecated_member_use, file_names

import 'package:flutter/material.dart';

class Login {
  Widget paginaInicial(BuildContext context) {
    Alignment.bottomCenter;

    return Scaffold(
      body: ListView(
        children: [
          botaoEntrar(context),
          botaoCadastrar(context),
        ],
      ),
    );
    //);
  }

  Widget botaoEntrar(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.fromLTRB(10, 400, 10, 10),
        color: Colors.amber,
        alignment: Alignment.center,
        child: RaisedButton(
          onPressed: () {},
          child: const Text("Entrar"),
          color: Colors.blue,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ));
  }

  Widget botaoCadastrar(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        color: Colors.amber,
        alignment: Alignment.center,
        child: RaisedButton(
          onPressed: () {},
          child: const Text("Cadastra-se"),
          color: Colors.blue,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ));
  }
}
