import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: App()));
}

//ATIVIDADE 1-------------------------------------------------------------------------------------------------------
/* class App extends StatelessWidget {
  var _nome = "Rodrigo";
  var _profissao = "Assistente";
  var _contato = "67 9 9999-9999";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      );
  }
} */

//ATIVIDADE 2-------------------------------------------------------------------------------------------------------

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
    return Scaffold(
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
      );
  }
} */

//ATIVIDADE 3-------------------------------------------------------------------------------------------------------

/* class App extends StatefulWidget {
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
} */

//ATIVIDADE 4-------------------------------------------------------------------------------------------------------

/* class App extends StatefulWidget {
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
    return Scaffold(
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
                _nome = _meuController.text;

                if (_nome.isNotEmpty) {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text("Olá, $_nome")));
                  _meuController.clear();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
} */

//ATIVIDADE 5-------------------------------------------------------------------------------------------------------

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  final _formKey = GlobalKey<FormState>();
  var _nome = TextEditingController();
  var _email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Center(
          child: Column(
            children: [
              TextFormField(
                controller: _nome,
                decoration: InputDecoration(labelText: "Seu nome: "),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Digite seu nome: ";
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _email,
                decoration: InputDecoration(labelText: "Seu e-mail: "),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Digite seu e-mail: ";
                  }
                  return null;
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    print("Formulário válido! ");
                    print("Olá, ${_nome.text}");
                    print("E-mail: ${_email.text}");
                  }
                },
                child: Text("Salvar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
