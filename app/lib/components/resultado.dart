import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() reiniciarQuestionario;
  Resultado(this.pontuacao, this.reiniciarQuestionario);

  String get exibirResultado {
    if (pontuacao < 8) {
      return 'Duas coisas para você: Para béns!';
    } else if (pontuacao < 12) {
      return 'Você é bom!';
    } else if (pontuacao < 16) {
      return 'Impressionante!';
    } else {
      return 'Nível Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            exibirResultado,
            style: TextStyle(
              fontSize: 28,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        TextButton(
          child: Text(
            'Voltar ao inicio?',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          onPressed: reiniciarQuestionario,
        ),
      ],
    );
  }
}
