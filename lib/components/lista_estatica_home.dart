import 'package:agendify/components/cliente_card.dart';
import 'package:agendify/models/clientes_models.dart';
import 'package:flutter/material.dart';

class ListaEstaticaHome extends StatefulWidget {
  const ListaEstaticaHome({super.key});

  @override
  State<ListaEstaticaHome> createState() => _ListaEstaticaHomeState();
}

class _ListaEstaticaHomeState extends State<ListaEstaticaHome> {
  final List<ClientesModels> lista = [
    ClientesModels(
      nome: "Pedro",
      data: "12/08/26",
      horario: "9:30",
      valor: 50.00,
    ),
    ClientesModels(
      nome: "Julia",
      data: "12/08/26",
      horario: "14:30",
      valor: 25.00,
    ),
    ClientesModels(
      nome: "Martina",
      data: "14/08/26",
      horario: "8:30",
      valor: 25.00,
    ),
    ClientesModels(
      nome: "Irlandia",
      data: "14/08/26",
      horario: "8:30",
      valor: 25.00,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: lista.length,
      itemBuilder: (context, index) {
        return ClienteCard(
          clientesModelo: lista[index],
          deletar: () {
            setState(() {
              lista.removeAt(index);
            });
          },
        );
      },
    );
  }
}
