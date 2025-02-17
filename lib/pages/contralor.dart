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
              BotonCandidato(context, "Contralor", Colors.lightBlue[300], 'assets/images/JuanPabloHernandezBustos1102Contralor.jpeg', "Juan Pablo Hernández Bustos", "5"),
              BotonCandidato(context, "Contralor", Colors.grey[600], 'assets/images/MiguelAngelDiazHernandez1004Contralor.jpeg', "Miguel Angel Díaz Hernández", "6"),
              BotonCandidato(context, "Contralor", Colors.red, 'assets/images/noDisponible.jpeg', "Shiara Arévalo Pariño", "1"),
              BotonCandidato(context, "Contralor", Colors.black, 'assets/images/AndresFelipePayaresAvilez1103Contralor.jpeg', "Andrés Felipe Payares Avilez", "3"),
              BotonCandidato(context, "Contralor", Colors.blue[800], 'assets/images/noDisponible.jpeg', "Zahara Nikolle Rodríguez V.", "2"),
              BotonCandidato(context, "Contralor", Colors.green[800], 'assets/images/noDisponible.jpeg', "Stiven Otero", "4"),
              BotonCandidato(context, "Contralor", Colors.white, 'assets/images/Votoenblanco.jpg', "Voto en BLANCO", "B"),
            ]
        ),
      ),
    );
  }
}