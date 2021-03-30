import 'package:app/components/questao.dart';
import 'package:app/components/resposta.dart';
import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() => _PerguntaAppState();
}

// classe que controla o estado do widget
class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?'
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Perguntas'),
          ),
          body: Column(
            children: [
              Questao(perguntas.elementAt(_perguntaSelecionada)),
              Resposta('Resposta 1', _responder),
              Resposta('Resposta 2', _responder),
              Resposta('Resposta 3', _responder),
            ],
          )),
    );
  }
}
