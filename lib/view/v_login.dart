// ignore: file_names
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class LoginPagina extends StatelessWidget {
  const LoginPagina({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
          top: 110,
          left: 40,
          right: 40,
        ),
        color: Colors.white,
        child: ListView(
          children: [
            SizedBox(
              width: 128,
              height: 128,
              child: Image.asset("assets/logo.png"),
            ),
            const SizedBox(
              width: 10,
              height: 10,
            ),
            SizedBox(
              width: 50,
              height: 50,
              child: Image.asset("assets/logoName.png"),
            ),
            const SizedBox(
              width: 40,
              height: 40,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: "E-mail",
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
            ),
            const SizedBox(
              width: 20,
              height: 20,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: "Senha",
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
            ),
            Container(
              height: 40,
              alignment: Alignment.centerRight,
              child: FlatButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/EsqueciSenha');
                },
                child: const Text(
                  "Esqueci Senha",
                ),
                textColor: Color.fromRGBO(10, 139, 108, 1),
              ),
            ),
            const SizedBox(
              width: 40,
              height: 40,
            ),
            Container(
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
                    "Entrar",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 23,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 20,
              height: 20,
            ),
            Container(
              height: 55,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(10, 139, 108, 1),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/Cadastro');
                  },
                  child: const Text(
                    "Cadastre-se",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 23),
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
