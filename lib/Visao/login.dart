import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
              child: Form(
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
                child: RaisedButton.icon(
                    icon: Icon(Icons.lock_open),
                    label: Text("Entrar"),
                    onPressed: () {
                      Navigator.pushNamed(context, "/listaSessoes");
                    }),
              ),
          ],
        ),
            )),
      ),
    );
  }
}
