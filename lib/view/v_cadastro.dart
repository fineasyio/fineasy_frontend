// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Cadastro extends StatelessWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        /*appBar: AppBar(
          title: Center(
              child: Container(
            padding: EdgeInsets.only(right: 40),
            child: SizedBox(
              width: 120,
              height: 120,
              child: Image.asset("assets/logoName.png"),
            ),
          )),
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          foregroundColor: Color.fromRGBO(10, 139, 108, 1),
        ),*/
        body: ListView(
      children: [
        Row(
          children: [
            Container(
              //color: Colors.red,
              padding: EdgeInsets.only(left: 10, top: 10),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/');
                },
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.arrow_back,
                  color: Color.fromRGBO(10, 139, 108, 1),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          width: 140,
          height: 140,
        ),
        Container(
          child: Container(
              padding: EdgeInsets.only(right: 20, left: 20),
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "CPF",
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
                "Avançar",
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
    ));
  }
}
