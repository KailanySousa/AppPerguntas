import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() respostaSelecionada;

  Resposta(this.texto, this.respostaSelecionada);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 10, right: 10),
      child: ElevatedButton(
          child: Text(this.texto,
              style: TextStyle(
                color: Colors.white,
              )),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
          ),
          onPressed: this.respostaSelecionada),
    );
  }
}
