// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class EsqueciSenha extends StatelessWidget {
  const EsqueciSenha({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nova Senha'),
        backgroundColor: Color.fromRGBO(10, 139, 108, 1),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              width: 140,
              height: 140,
            ),
            Container(
              child: Container(
                  padding: EdgeInsets.only(right: 20, left: 20),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      labelText: "Email",
                      labelStyle: TextStyle(
                        color: Color.fromRGBO(10, 139, 108, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                    style: const TextStyle(
                      color: Color.fromRGBO(10, 139, 108, 1),
                      fontSize: 20,
                    ),
                  )),
            ),
            SizedBox(
              width: 380,
              height: 380,
            ),
            Container(
              margin: EdgeInsets.all(20),
              height: 55,
              alignment: Alignment.centerLeft,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(28, 172, 182, 1),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/Home');
                  },
                  child: const Text(
                    "Enviar Senha",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 23,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
