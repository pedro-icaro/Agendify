import 'package:agendify/components/faturamento_card.dart';
import 'package:flutter/material.dart';

class Perfil extends StatefulWidget {
  final List lista;
  String nomeAtual;
  void Function(String) funcao;
  Perfil({required this.lista ,required this.nomeAtual, required this.funcao, super.key});

  @override
  State<Perfil> createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  late TextEditingController nomeControler;

  @override
  void initState() {
    super.initState();
    nomeControler = TextEditingController(text: widget.nomeAtual);
  }

  void abrirCaixa() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Editar Nome"),

          content: TextField(
            controller: nomeControler,
            decoration: InputDecoration(labelText: "Novo Nome"),
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                widget.funcao(nomeControler.text);

                Navigator.pop(context);
              },
              child: Text("Salvar"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Perfil", style: TextStyle(fontSize: 25)),
              SizedBox(height: 30),
              Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.blueGrey[700],
                    child: Icon(Icons.person, color: Colors.white, size: 45),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Seja Bem Vindo(a),",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.blueGrey[300],
                          ),
                        ),
                        SizedBox(height: 0),
                        Text("${widget.nomeAtual}", style: TextStyle(fontSize: 30)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, bottom: 35),
                    child: IconButton(onPressed: () => abrirCaixa(), icon: Icon(Icons.edit, size: 20)),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Text("Faturamento", style: TextStyle(fontSize: 25)),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: FaturamentoCard(lista: widget.lista),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
