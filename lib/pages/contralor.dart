import 'package:flutter/material.dart';
import 'botonCandidato.dart';

class contralor extends StatelessWidget{
  contralor({Key? key}) : super(key : key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("CONTRALOR"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: GridView.count(
            crossAxisCount: 3,      //Cuántos elementos tendra de forma horizontal máximo acomada 3 por fila
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            children: <Widget>[

              BotonCandidato(context, "Contralor", Colors.green, 'assets/images/JoelValenzuela.jpg', "Joel Valenzuela", "5"),
              BotonCandidato(context, "Contralor", Colors.orange, 'assets/images/YeibersonFranco.jpg', "José Yeiberson Franco", "8"),
              BotonCandidato(context, "Contralor", Colors.white, 'assets/images/Votoenblanco.jpg', "Voto en BLANCO", "B"),

            ]
        ),
      ),
    );
  }
}