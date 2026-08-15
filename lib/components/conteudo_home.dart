import 'package:agendify/components/cliente_card.dart';
import 'package:agendify/components/faturamento_card.dart';
import 'package:agendify/components/lista_clientes.dart';
import 'package:agendify/components/lista_estatica_home.dart';
import 'package:agendify/components/subtitulo_home.dart';
import 'package:agendify/models/clientes_models.dart';
import 'package:flutter/material.dart';

class ConteudoHome extends StatefulWidget {
  final List lista;
  String nomeAtual;
  ConteudoHome({required this.lista, required this.nomeAtual, super.key});

  @override
  State<ConteudoHome> createState() => _ConteudoHomeState();
}

class _ConteudoHomeState extends State<ConteudoHome> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SubtituloHome(nome: widget.nomeAtual),
          SizedBox(height: 20),
          Center(child: FaturamentoCard(lista: widget.lista)),
          SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "Clientes Anteriores",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              ListaEstaticaHome(),
            ],
          ),
        ],
      ),
    );
  }
}
