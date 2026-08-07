import 'package:flutter/material.dart';

class SubTituloHome extends StatelessWidget {
  const SubTituloHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 200,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20, top: 40),
                child: Column(
                  children: [
                    Text("Olá, Maria", style: TextStyle(fontSize: 25)),
                    Text("07/08/26", style: TextStyle(fontSize: 20)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
