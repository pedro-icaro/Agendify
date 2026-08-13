import 'package:agendify/components/conteudo_home.dart';
import 'package:agendify/components/faturamento_card.dart';
import 'package:agendify/components/subtitulo_home.dart';
import 'package:agendify/pages/faturamento.dart';
import 'package:agendify/pages/horarios_page.dart';
import 'package:agendify/pages/perfil.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String nomeUsuario = "Pedro Bandeira";
  int _navegacaoindex = 0;

  void atualizarNome(novoNome) {
    setState(() {
      nomeUsuario = novoNome;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _telas = [
      ConteudoHome(nomeAtual: nomeUsuario),
      HorariosPage(),
      Faturamento(),
      Perfil(),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Agendify"),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.feedback_outlined, color: Colors.white),
          ),
        ],
      ),

      body: _telas[_navegacaoindex],
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(16),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BottomNavigationBar(
            backgroundColor: Colors.blueGrey[900],
            selectedItemColor: Colors.blueAccent,
            unselectedItemColor: Colors.white60,

            type: BottomNavigationBarType.fixed,
            currentIndex: _navegacaoindex,
            onTap: (index) {
              setState(() {
                _navegacaoindex = index;
              });
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: "Inicio",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month_outlined),
                label: "Horarios",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.payments_outlined),
                label: "Faturamento",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: "Perfil",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
