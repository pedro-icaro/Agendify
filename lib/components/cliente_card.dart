import 'package:agendify/models/clientes_models.dart';
import 'package:flutter/material.dart';

class ClienteCard extends StatelessWidget {
  final ClientesModels clientesModelo;
  final VoidCallback deletar;
  ClienteCard({required this.clientesModelo, required this.deletar, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.all(8),
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
                              Text(clientesModelo.data),
                              SizedBox(width: 10),
                              Text(clientesModelo.horario),
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
                  child: IconButton(
                    onPressed: deletar,
                    icon: Icon(Icons.delete_outline, size: 21),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
