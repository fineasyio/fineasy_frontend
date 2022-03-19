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
      body: ListView(
        children: [
          SizedBox(
            width: 150,
            height: 150,
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: TextFormField(
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
          ),
          SizedBox(
            width: 250,
            height: 250,
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
    );
  }
}
