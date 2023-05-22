// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'componente.dart';

void main() {
  runApp(Ativ());
}

class Ativ extends StatefulWidget {
  const Ativ({super.key});

  @override
  State<Ativ> createState() => _AtivState();
}

class _AtivState extends State<Ativ> {
  var cor_caixa = Colors.white;

  void mudar_a_cor(Color cor) {
    setState(() {
      cor_caixa = cor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Atividade Flutter'),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () => mudar_a_cor(Colors.blue),
                  child: Text('azul')),
              ElevatedButton(
                  onPressed: () => mudar_a_cor(Colors.green),
                  child: Text('verde')),
              ElevatedButton(
                  onPressed: () => mudar_a_cor(Colors.black),
                  child: Text('preto')),
              componente(cor_caixa)
            ],
          ),
        ),
      ),
    );
  }
}
