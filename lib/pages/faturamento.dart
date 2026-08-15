import 'package:agendify/components/cliente_card.dart';
import 'package:agendify/components/faturamento_card.dart';
import 'package:agendify/components/lista_clientes.dart';
import 'package:agendify/models/clientes_models.dart';
import 'package:flutter/material.dart';

class Faturamento extends StatefulWidget {
  final List lista;
  const Faturamento({required this.lista, super.key});

  @override
  State<Faturamento> createState() => _FaturamentoState();
}

class _FaturamentoState extends State<Faturamento> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Faturamento Total",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              FaturamentoCard(lista: widget.lista),
              SizedBox(height: 15),
              Text(
                "Ultimos 30 Dias",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
