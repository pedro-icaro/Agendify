import 'package:agendify/components/cliente_card.dart';
import 'package:agendify/models/clientes_models.dart';
import 'package:flutter/material.dart';

class HorariosPage extends StatefulWidget {
  const HorariosPage({super.key});

  @override
  State<HorariosPage> createState() => _HorariosPageState();
}

class _HorariosPageState extends State<HorariosPage> {
  final List<ClientesModels> listaUsuarios = [
    ClientesModels(
      nome: "Pedro",
      data: DateTime(2026, 08, 09),
      horario: TimeOfDay(hour: 9, minute: 30),
      valor: 25.00,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [Card(child: ClienteCard(clientesModelo: listaUsuarios[0]),)]));
  }
}
