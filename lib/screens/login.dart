import 'package:flutter/material.dart';

import '../main.dart';
import 'lista_transferencia.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginState();
  }
}

class LoginState extends State<Login> {
  String Ag = '';
  String Cc = '';
  String Senha = '';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Scaffold(
          body: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 200,
                    height: 200,
                    child: Image.asset('imagem/logo.png')
                ),
                TextField(
                  onChanged: (text) {
                    Ag = text;
                  },
                  decoration: InputDecoration(
                    labelText: 'Ag:',
                    border: OutlineInputBorder(),
                  ),
                ),
                TextField(
                  onChanged: (text) {
                    Cc = text;
                  },
                  decoration: InputDecoration(
                    labelText: 'Cc',
                    border: OutlineInputBorder(),
                  ),
                ),
                TextField(
                  onChanged: (text) {
                    Senha = text;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    border: OutlineInputBorder(),
                  ),
                ),

                ElevatedButton(
                    child: const Text("Entrar"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return ListaTransferencia();
                        }),
                      );
                    })
              ]),
        ),
      ),
    );
  }
}