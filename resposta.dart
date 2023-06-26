import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  // ignore: prefer_typing_uninitialized_variables
  final quandoSelecionar;
  const Resposta(this.texto, this.quandoSelecionar, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      child: ElevatedButton(
        onPressed: quandoSelecionar(texto),
        child: Text(texto),
      ),
    );
  }
}
