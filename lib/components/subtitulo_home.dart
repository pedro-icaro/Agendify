import 'package:flutter/material.dart';

class SubtituloHome extends StatelessWidget {
  String nome;
  SubtituloHome({required this.nome, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 18),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Seja bem vindo(a),",
              style: TextStyle(fontSize: 15, color: Colors.blueGrey[300]),
            ),
            Text("$nome", style: TextStyle(fontSize: 28)),
            Text(
              "Preparado(a) para o dia\n de hoje?",
              style: TextStyle(fontSize: 15, color: Colors.blueGrey[300]),
            ),
          ],
        ),
      ),
    );
  }
}
