import 'package:agendify/components/cliente_card.dart';
import 'package:agendify/components/lista_clientes.dart';
import 'package:agendify/models/clientes_models.dart';
import 'package:flutter/material.dart';

class HorariosPage extends StatefulWidget {
  final List<ClientesModels> lista;
  const HorariosPage({required this.lista, super.key});

  @override
  State<HorariosPage> createState() => _HorariosPageState();
}

class _HorariosPageState extends State<HorariosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListaClientes(lista: widget.lista));
  }
}
