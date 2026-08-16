import 'package:agendify/components/cliente_card.dart';
import 'package:agendify/models/clientes_models.dart';
import 'package:flutter/material.dart';

class ListaClientes extends StatefulWidget {
  final List<ClientesModels> lista;
  
  final Function(ClientesModels) onAdicionar;
  final Function(int) onDeletar;

  const ListaClientes({
    required this.lista,
    required this.onAdicionar,
    required this.onDeletar,
    super.key,
  });

  @override
  State<ListaClientes> createState() => _ListaClientesState();                                 
}

class _ListaClientesState extends State<ListaClientes> {
  final TextEditingController nomeControler = TextEditingController();
  final TextEditingController valorControler = TextEditingController();
  final TextEditingController dataControler = TextEditingController();
  final TextEditingController horaControler = TextEditingController();

  void adicionarCliente() {
    String nomeDigitado = nomeControler.text;
    double valorDigitado = double.tryParse(valorControler.text) ?? 0.0;
    String dataDigitada = dataControler.text;
    String horaDigitada = horaControler.text;

    if (nomeDigitado.isEmpty) return;

    widget.onAdicionar(
      ClientesModels(
        nome: nomeDigitado,
        data: dataDigitada,
        horario: horaDigitada,
        valor: valorDigitado,
      ),
    );

    nomeControler.clear();
    valorControler.clear();
    dataControler.clear();
    horaControler.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.lista.isEmpty
          ? Center(
              child: Column(
                children: [
                  const Text(
                    "Nenhum Cliente Adicionado",
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(height: 40),
                  Image.asset(
                    "assets/images/Waiting.png",
                    width: 200,
                    height: 450,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            )
          : ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: widget.lista.length,
              itemBuilder: (context, index) {
                return ClienteCard(
                  clientesModelo: widget.lista[index],
                  deletar: () {
                    widget.onDeletar(index);
                  },
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) {
              return Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        "Novo Agendamento",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          TextField(
                            controller: nomeControler,
                            decoration: const InputDecoration(
                              labelText: 'Nome do Cliente',
                            ),
                          ),
                          const SizedBox(height: 10),
                          TextField(
                            controller: valorControler,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              labelText: 'Valor (R\$)',
                            ),
                          ),
                          const SizedBox(height: 10),
                          TextField(
                            controller: dataControler,
                            keyboardType: TextInputType.number, 
                            decoration: const InputDecoration(
                              labelText: 'Data',
                            ),
                          ),
                          const SizedBox(height: 20),
                          TextField(
                            controller: horaControler,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              labelText: 'Horario',
                            ),
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey[800],
                      ),
                      onPressed: () {
                        adicionarCliente();
                        Navigator.pop(context);
                      },
                      child: const Text('Salvar Agendamento'),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}