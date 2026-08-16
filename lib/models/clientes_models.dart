import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

part 'clientes_models.g.dart';

@HiveType(typeId: 0)
class ClientesModels extends HiveObject{
  @HiveField(0)
  final int? id;
  @HiveField(1)
  final String nome;
  @HiveField(2)
  final String data;
  @HiveField(3)
  final String horario;
  @HiveField(4)
  final double valor;

  ClientesModels({
    this.id,
    required this.nome,
    required this.data,
    required this.horario,
    required this.valor,
  });
}
