import 'package:flutter/material.dart';
import 'botonCandidato.dart';
import 'globales.dart';

class representante extends StatelessWidget{
  representante({Key? key});

  @override
  Widget build(BuildContext context){

    // aqui debe ir la creacion de la lista

    return Scaffold(
      appBar: AppBar(
        title: const Text("REPRESENTANTE DE CURSO"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.count(
            crossAxisCount: 2,      //Cuántos elementos tendra de forma horizontal máximo acomada 3 por fila
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            children:
              crearLista(context),
        ),
      ),
    );
  }

  // Crea la lista de candidatos y retorna los botones para ser presentados en pantalla

  List<Widget> crearLista(BuildContext context) {
    List<Widget> listaRepresentantes = [];

    switch (curso) {
      case "101":
        listaRepresentantes.add(BotonCandidato(context, "Representante", Colors.blueGrey, 'assets/images/bart.png', "Bart Simpson", "1"));
        listaRepresentantes.add(BotonCandidato(context, "Representante", Colors.cyan, 'assets/images/lisa.jpeg', "Lisa Simpson", "2"));
      case "301":
        listaRepresentantes.add(BotonCandidato(context, "Representante", Colors.blueGrey, 'assets/images/piolin.png', "Piolin", "3"));
        listaRepresentantes.add(BotonCandidato(context, "Representante", Colors.cyan, 'assets/images/silvestre.jpeg', "Silvestre", "2"));
      case "1101":
        listaRepresentantes.add(BotonCandidato(context, "Representante", Colors.blueGrey, 'assets/images/taz.jpeg', "Demonio de Tazmania", "3"));
        listaRepresentantes.add(BotonCandidato(context, "Representante", Colors.cyan, 'assets/images/bugs.jpeg', "Bugs Bunny", "2"));
      default:
        listaRepresentantes.add(BotonCandidato(context, "Representante", Colors.white, 'assets/images/finalizar.jpeg', "Finalizar Votación", "0"));
    }

    return listaRepresentantes;
  }
}
