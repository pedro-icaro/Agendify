import 'package:flutter/material.dart';

class ClientesModels {
  final int? id;
  final String nome;
  final DateTime data;
  final TimeOfDay horario;
  final double valor;

  ClientesModels({
    this.id,
    required this.nome,
    required this.data,
    required this.horario,
    required this.valor,
  });
}
