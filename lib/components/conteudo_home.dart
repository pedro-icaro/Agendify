import 'package:agendify/components/cliente_card.dart';
import 'package:agendify/components/faturamento_card.dart';
import 'package:agendify/components/lista_clientes.dart';
import 'package:agendify/components/lista_estatica_home.dart';
import 'package:agendify/components/subtitulo_home.dart';
import 'package:agendify/models/clientes_models.dart';
import 'package:flutter/material.dart';

class ConteudoHome extends StatefulWidget {
  final List<ClientesModels> lista;
  final VoidCallback navegacao;
  String nomeAtual;
  ConteudoHome({
    required this.navegacao,
    required this.lista,
    required this.nomeAtual,
    super.key,
  });

  @override
  State<ConteudoHome> createState() => _ConteudoHomeState();
}

class _ConteudoHomeState extends State<ConteudoHome> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SubtituloHome(nome: widget.nomeAtual),
            SizedBox(height: 20),
            Center(
              child: FaturamentoCard(
                lista: widget.lista,
                navegacao: widget.navegacao,
              ),
            ),
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
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: widget.lista.length,
                  itemBuilder: (context, index) {
                    final clienteDaVez = widget.lista[index];
                    return ClienteCard(
                      clientesModelo: clienteDaVez,
                      deletar: () {},
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
