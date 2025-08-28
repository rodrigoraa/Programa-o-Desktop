import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

/* class App extends StatelessWidget {
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
} */

/* class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  var cont = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: (Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text(cont > 0 ? "$cont Clicks" : "Aperte aqui"),
                onPressed: () {
                  setState(() {
                    cont++;
                  });
                  print('$cont');
                },
              ),
            ],
          )),
        ),
      ),
    );
  }
} */

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  var _nome;
  var _meuController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Form(
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(label: Text("Entre com o nome: ")),
                controller: _meuController,
              ),
              ElevatedButton(
                child: Text("Salvar"),
                onPressed: () {
                  setState(() {
                    _nome = _meuController.text;
                  });
                  print("$_nome");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
