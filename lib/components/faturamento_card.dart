import 'package:flutter/material.dart';

class FaturamentoCard extends StatefulWidget {
  const FaturamentoCard({super.key});

  @override
  State<FaturamentoCard> createState() => _FaturamentoCardState();
}

class _FaturamentoCardState extends State<FaturamentoCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 340,
      height: 160,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        color: Colors.blueGrey[800],
        child: Padding(
          padding: EdgeInsetsGeometry.only(left: 20,top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Veja seu Faturamento!",style: TextStyle(fontSize: 20),),
              SizedBox(height: 2,),
              Text("R\$ 172.00",style: TextStyle(fontSize: 25),),

              const Spacer(),

              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsetsGeometry.only(bottom: 15),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,shape: CircleBorder()),
                    onPressed: () {},
                    child: Icon(Icons.arrow_forward,size: 22,),
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
