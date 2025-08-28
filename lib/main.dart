import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  var _nome = "Rodrigo";
  var _profissao = "Assistente";
  var _contato = "67 9 9999-9999";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Meu cartão de visitas"), centerTitle: true),
        body: Center(
          child: Column(
            children: [
              Text(
                "Nome: $_nome",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "Profissão: $_profissao",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "Contato: $_contato",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
