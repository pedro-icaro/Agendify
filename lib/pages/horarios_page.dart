import 'package:agendify/components/lista_clientes.dart';
import 'package:agendify/models/clientes_models.dart';
import 'package:flutter/material.dart';

class HorariosPage extends StatefulWidget {
  final List<ClientesModels> lista;
  
  final Function(ClientesModels) onAdicionar;
  final Function(int) onDeletar;
  
  const HorariosPage({
    required this.onAdicionar,
    required this.onDeletar,
    required this.lista,
    super.key,
  });

  @override
  State<HorariosPage> createState() => _HorariosPageState();
}

class _HorariosPageState extends State<HorariosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListaClientes(
        lista: widget.lista,
        onAdicionar: widget.onAdicionar, 
        onDeletar: widget.onDeletar,
      ),
    );
  }
}