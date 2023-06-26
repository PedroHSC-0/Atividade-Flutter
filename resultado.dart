import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final resultado;
  const Resultado(this.resultado, {super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Resposta 1 ${resultado[0]}'),
        Text('Resposta 2 ${resultado[1]}'),
        Text('Resposta 3 ${resultado[2]}')
      ],
    ),
    );
  }
}
