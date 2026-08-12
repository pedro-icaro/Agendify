import 'package:agendify/components/cliente_card.dart';
import 'package:agendify/components/faturamento_card.dart';
import 'package:agendify/components/lista_clientes.dart';
import 'package:agendify/models/clientes_models.dart';
import 'package:flutter/material.dart';

class Faturamento extends StatefulWidget {
  const Faturamento({super.key});

  @override
  State<Faturamento> createState() => _FaturamentoState();
}

class _FaturamentoState extends State<Faturamento> {
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
              FaturamentoCard(),
              SizedBox(height: 15),
              Text(
                "Ultimos 30 Dias",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              ListView.builder(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
