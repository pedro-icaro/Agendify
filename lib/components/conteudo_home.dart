import 'package:agendify/components/faturamento_card.dart';
import 'package:agendify/components/subtitulo_home.dart';
import 'package:flutter/material.dart';

class ConteudoHome extends StatefulWidget {
  const ConteudoHome({super.key});

  @override
  State<ConteudoHome> createState() => _ConteudoHomeState();
}

class _ConteudoHomeState extends State<ConteudoHome> {
  @override
  Widget build(BuildContext context) {
    return  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SubtituloHome(),
          SizedBox(height: 20),
          Center(child: FaturamentoCard()),
        ],
      );
  }
}