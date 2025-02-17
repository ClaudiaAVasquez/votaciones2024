import 'package:flutter/material.dart';
import 'botonCandidato.dart';

class cabildante extends StatelessWidget{
  cabildante({Key? key});

  @override
  Widget build(BuildContext context){

    // aqui debe ir la creacion de la lista

    return Scaffold(
      appBar: AppBar(
        title: const Text("CABILDANTE"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: GridView.count(
            crossAxisCount: 3,      //Cuántos elementos tendra de forma horizontal máximo acomada 3 por fila
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            children: <Widget> [
              BotonCandidato(context, "Cabildante", Colors.red, 'assets/images/AngelicaRaquelAndradeLuna1004Cabildante.jpeg', "Angélica Raquel Andrade Luna", "1"),
              BotonCandidato(context, "Cabildante", Colors.white, 'assets/images/JeremyRodriguez1101Cabildante.jpeg', "Jeremy Rodríguez Quiroz", "2"),
              BotonCandidato(context, "Cabildante", Colors.purple, 'assets/images/noDisponible.jpeg', "Isabela de Jesús Meza Castro", "3"),
              BotonCandidato(context, "Cabildante", Colors.white, 'assets/images/Votoenblanco.jpg', "Voto en Blanco", "B"),
            ]
        ),
      ),
    );
  }
}
