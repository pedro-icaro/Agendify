import 'package:flutter/material.dart';

class Navegacao extends StatefulWidget {
  const Navegacao({super.key});

  @override
  State<Navegacao> createState() => _NavegacaoState();
}

class _NavegacaoState extends State<Navegacao> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Icon(Icons.home_outlined,size: 35,),
          Icon(Icons.calendar_month,size: 35,),
          Icon(Icons.attach_money,size: 35,),
        ],
      ),
    );
  }
}
