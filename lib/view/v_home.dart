import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: ListView(
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
         )       
        );   
    }

  }


  Widget botaoLista(BuildContext context){
      return Container(
            color: Colors.blue,
            margin: EdgeInsets.all(10),
            height: 70,
            width:  70,  
      );
  }

  Widget cartao(BuildContext context){
      return Card(
        child: Container(
          margin: EdgeInsets.all(10),
          color: Colors.blue[300],
          height: 300        
        ),
      );
  }