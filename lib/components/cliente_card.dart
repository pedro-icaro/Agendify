import 'package:agendify/models/clientes_models.dart';
import 'package:flutter/material.dart';

class ClienteCard extends StatelessWidget {
  final ClientesModels clientesModelo;
  ClienteCard({required this.clientesModelo, super.key});

  @override
  Widget build(BuildContext context) {
    final dataFormatada =
        "${clientesModelo.data.day.toString().padLeft(2, '0')}/${clientesModelo.data.month.toString().padLeft(2, '0')}/${clientesModelo.data.year}";
    final horarioFormatado =
        "${clientesModelo.horario.hour.toString().padLeft(2, '0')}:${clientesModelo.horario.minute.toString().padLeft(2, '0')}";

    return SizedBox(
      child: Card(
        margin: EdgeInsets.all(0),
        surfaceTintColor: Colors.transparent,
        shadowColor: Colors.transparent,
        elevation: 0,
        color: Colors.blueGrey[900],
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Container(
                    width: 80,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(width: 3, color: Colors.blue),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        "R\$ ${clientesModelo.valor.toStringAsFixed(2)}",
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          clientesModelo.nome,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Text(dataFormatada),
                            SizedBox(width: 10),
                            Text(horarioFormatado),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsetsGeometry.only(right: 10, top: 10),
                child: Icon(Icons.delete_outline, size: 21),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
