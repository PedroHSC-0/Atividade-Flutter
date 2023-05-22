import 'package:flutter/material.dart';

class componente extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  var cor;
  componente(this.cor, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: cor,
    );
  }
}
