import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Center(
        child: Text(
          'Duas coisas para você: Para béns!',
          style: TextStyle(
            fontSize: 28,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
