import 'package:finan_easy/view/v_cadastro.dart';
import 'package:finan_easy/view/v_esqueciSenha.dart';
import 'package:finan_easy/view/v_home.dart';
import 'package:flutter/material.dart';
import 'package:finan_easy/view/v_login.dart';

void main() {
  runApp(GoogleSignInApp());
}

class GoogleSignInApp extends StatefulWidget {
  const GoogleSignInApp({Key? key}) : super(key: key);

  @override
  State<GoogleSignInApp> createState() => _GoogleSignInAppState();
}

class _GoogleSignInAppState extends State<GoogleSignInApp> {
  @override
  Widget build(BuildContext context) {
    return const Fineasy();
  }
}

final v_login = LoginPagina();

final v_cadastro = Cadastro();

final v_home = Home();

final v_esqueciSenha = EsqueciSenha();

class Fineasy extends StatelessWidget {
  const Fineasy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: v_login.build(context),
      routes: {
        '/': (context) => v_login.build(context),
        '/Cadastro': (context) => v_cadastro.build(context),
        '/Home': (context) => v_home.build(context),
        '/EsqueciSenha': (context) => v_esqueciSenha.build(context)
      },
    );
  }
}
