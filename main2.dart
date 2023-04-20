import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Atividade 3 Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Componentes Flutter'),
        ),
        body: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Aprendendo'),
                    Text('Programação'),
                    Text('Flutter'),
                  ],
                ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Enviar'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Cancelar'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Salvar'),
                ),
              ],
            ),
          ],

      ),
      ),
    );
  }
}