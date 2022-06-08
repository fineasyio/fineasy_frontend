import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
    GoogleSignInAccount? user = _googleSignIn.currentUser;
    return Scaffold(

        /*body: ListView(
           children: [
             cartao(context),  
             Container(
              color: Colors.grey,              
              margin: EdgeInsets.fromLTRB(0, 25, 0, 70), //(left, top, right, bottom)
              height: 90,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [                                 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      botaoLista(context),
                      botaoLista(context), 
                      botaoLista(context), 
                      botaoLista(context), 
                      botaoLista(context),                         
                    ],
                  ),
                ],
              ),
            )  
           ],
         )   **/

        body: Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.all(30),
        height: 55,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 175, 228, 238),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: SizedBox.expand(
          child: FlatButton(
            onPressed: user != null
                ? null
                : () async {
                    await _googleSignIn.signOut();
                    Navigator.of(context).pushNamed('/');
                  },
            child: const Text(
              "Sair da Conta",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 35, 44, 49),
                  fontSize: 23),
            ),
          ),
        ),
      ),
    ));
  }
}

Widget botaoLista(BuildContext context) {
  return Container(
    color: Colors.blue,
    margin: EdgeInsets.all(10),
    height: 70,
    width: 70,
  );
}

Widget cartao(BuildContext context) {
  return Card(
    child: Container(
        margin: EdgeInsets.all(10), color: Colors.blue[300], height: 300),
  );
}
