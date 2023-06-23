import 'package:atividades/questionario.dart';
import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main() {
  runApp(const Componentes());
}

class Componentes extends StatefulWidget {
  const Componentes({super.key});

  @override
  State<Componentes> createState() => _ComponentesState();
}

class _ComponentesState extends State<Componentes> {
  var perguntaAtual = 0;
  var cor = Colors.white;
  var respostasFinal = [];

  final List<Map<String, Object>> questionario = [
    {
      "pergunta": "Qual a sua cor favorita?",
      "respostas": ["Amarelo", "Preto", "Branco", "Azul", "Vermelho"]
    },
    {
      "pergunta": "Qual é seu animal favorito?",
      "respostas": ["Cachorro", "Gato", "Tartaruga", "Periquito"]
    },
    {
      "pergunta": "Qual sua linguagem favorita?",
      "respostas": ["Python", "Java", "JavaScript"]
    },
  ];

  bool get temPergunta {
    return perguntaAtual < questionario.length;
  }

  void acao() {
    setState(() {
      respostasFinal.add(questionario[perguntaAtual]);
      perguntaAtual++;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> respostas = [];

    if (temPergunta) {
      for (var resposta
          in questionario[perguntaAtual]["respostas"] as List<String>) {
        respostas.add(
          Resposta(resposta, acao),
        );
      }
    }

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: temPergunta
            ? Questao(questionario[perguntaAtual]["pergunta"].toString())
            : const Questao("Terminou"),
      ),
      body: temPergunta
          ? Questionario(
              perguntas: questionario,
              perguntaAtual: perguntaAtual,
              onRespostaSelecionada: acao)
          : const Text('Resultado'),
    ));
  }
}
