import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
          child: Center(
            child: ListView(
              shrinkWrap: true,
        children: <Widget>[
          Image.asset("imagens/mppalogo.jpg"),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Login",
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Senha",
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: RaisedButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.lock_open),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Entrar"),
                    ],
                  ),
                  onPressed: () {}),
            ),
        ],
      ),
          )),
    );
  }
}
