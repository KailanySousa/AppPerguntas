import 'package:app/components/questao.dart';
import 'package:app/components/resposta.dart';
import 'package:flutter/material.dart';

class Questionario extends StatelessWidget {
  final String texto;
  final List<String> respostas;
  final void Function() selecao;

  Questionario(this.texto, this.respostas, this.selecao);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questao(this.texto),
        ...respostas.map((e) => Resposta(e, selecao)).toList(),
      ],
    );
  }
}
