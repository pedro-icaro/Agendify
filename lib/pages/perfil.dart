import 'package:agendify/components/faturamento_card.dart';
import 'package:flutter/material.dart';

class Perfil extends StatefulWidget {
  const Perfil({super.key});

  @override
  State<Perfil> createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
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
                        Text("Maria", style: TextStyle(fontSize: 30)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 70,bottom: 35),
                    child: Icon(Icons.edit,size: 20,),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Text("Faturamento",style: TextStyle(fontSize: 25),),SizedBox(height: 20,),Padding(
                padding: const EdgeInsets.only(right: 20),
                child: FaturamentoCard(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
