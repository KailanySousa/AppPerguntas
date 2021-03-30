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
              Text(perguntas.elementAt(_perguntaSelecionada)),
              ElevatedButton(
                child: Text('Resposta 1'),
                onPressed: _responder,
              ),
              ElevatedButton(
                child: Text('Resposta 2'),
                onPressed: () => _responder(),
              ),
              ElevatedButton(
                child: Text('Resposta 3'),
                onPressed: () => _responder(),
              ),
            ],
          )),
    );
  }
}
