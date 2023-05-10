import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> botoes = []; // uma lista de widgets (botões)
  String textobotao = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Botão Dinâmico'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(onChanged: (Text) {
              textobotao = Text;
              print(textobotao);
            }),
            ElevatedButton(
              child: Text('Criar botão'),
              onPressed: () {
                setState(() {
                  // Adiciona um novo botão à lista de botões
                  botoes.add(ElevatedButton(
                    child: Text(textobotao),
                    onPressed: () {
                      print('Botão criado dinamicamente!');
                    },
                  ));
                });
              },
            ),
            SizedBox(height: 16.0), // um espaço vazio para separar os botões
            Column(
              children: botoes, // Mostra todos os botões da lista
            ),
          ],
        ),
      ),
    );
  }
}
