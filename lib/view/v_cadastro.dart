import 'package:flutter/material.dart';

class Cadastro extends StatelessWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Container(
              padding: EdgeInsets.all(50),
              child: SizedBox(
                width: 128,
                height: 128,
                child: Image.asset("assets/logoName.png"),
              ),
            ),
            backgroundColor: Color.fromARGB(255, 216, 216, 216)),
        body: ListView(
          children: [
            SizedBox(
              width: 128,
              height: 128,
            ),
            Container(
              color: Colors.white,
              child: Card(
                  //elevation: 20,
                  child: Container(
                      height: 50,
                      //color: Colors.amber,
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
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
                      ))),
            ),
          ],
        ));
  }
}
