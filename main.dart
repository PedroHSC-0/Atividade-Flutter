import 'package:flutter/material.dart';

void main() {
  runApp(Aula());
}

class Aula extends StatefulWidget {
  @override
  State<Aula> createState() => _AulaState();
}

class _AulaState extends State<Aula> {
  var contagem = 0;

  final perguntas = [
    "Qual seu artista preferido?",
    "Qual sua música preferida?",
    "Qual sua Comida preferida?",
    "1",
    "2",
    "5",
    "5",
    "0"
  ];

  void click() {
    setState(() {
      contagem:
      contagem++;
    });
    print(contagem);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Primeiro App interativo"),
            ),
            body: Column(
              children: [
                Text(perguntas[contagem]),
                ElevatedButton(onPressed: click, child: Text("Clique aqui")),
                ElevatedButton(
                    // função anônima
                    onPressed: () {
                      print("outra função");
                    },
                    child: Text('Clique aqui')),
                ElevatedButton(
                    onPressed: () => print("Função arrow"),
                    child: Text("Clique aqui"))
              ],
            )));
  }
}
