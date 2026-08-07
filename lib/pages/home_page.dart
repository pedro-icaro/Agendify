import 'package:agendify/components/navegacao.dart';
import 'package:agendify/components/subtitulo_home.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Agendify"),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: Column(
              children: [Icon(Icons.person, size: 35), Text("username")],
            ),
          ),
        ],
      ),
      body: Column(children: [SubTituloHome(),Navegacao()],)
    );
  }
}
