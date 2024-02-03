import 'package:flutter/material.dart';

import 'archivo.dart';
import 'dart:io';
import 'globales.dart';

class representante extends StatelessWidget{
  representante({Key? key, required this.archivo});
  final File archivo;

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

    String curso = obtenerCurso(archivo);

    switch (curso) {
      case "101":
        listaRepresentantes.add(BotonRepresentante(context, Colors.blueGrey, 'assets/images/bart.png', "Bart Simpson", "1", archivo));
        listaRepresentantes.add(BotonRepresentante(context, Colors.cyan, 'assets/images/lisa.jpeg', "Lisa Simpson", "2", archivo));
      case "301":
        listaRepresentantes.add(BotonRepresentante(context, Colors.blueGrey, 'assets/images/piolin.png', "Piolin", "3", archivo));
        listaRepresentantes.add(BotonRepresentante(context, Colors.cyan, 'assets/images/silvestre.jpeg', "Silvestre", "2", archivo));
      case "1101":
        listaRepresentantes.add(BotonRepresentante(context, Colors.blueGrey, 'assets/images/taz.jpeg', "Demonio de Tazmania", "3", archivo));
        listaRepresentantes.add(BotonRepresentante(context, Colors.cyan, 'assets/images/bugs.jpeg', "Bugs Bunny", "2", archivo));
      default:
        listaRepresentantes.add(BotonRepresentante(context, Colors.white, 'assets/images/finalizar.jpeg', "Finalizar Votacion", "0", archivo));
    }

    return listaRepresentantes;
  }

  // Genera el boton para cada candidato

  Widget BotonRepresentante(BuildContext contexto, var color, String imagen, String nombreRepresentante, String numrepre, File archivo) {

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
          Image.asset(imagen, height: 200, width: 200, ),
          Text(" $nombreRepresentante ", style: const TextStyle(backgroundColor: Colors.white, color: Colors.black, fontSize: 15),),
        ],
      ),
      onPressed: () {
        showDialog(
            barrierDismissible: false,                  //No quita el cuadro de Dialogo al darle clic por fuera de este
            builder: (context){
              return AlertDialog(
                title: const Text("Votacion Representante"),
                content: Text(
                    "Estas votando por $nombreRepresentante, estas seguro?"),
                actions: <Widget>[
                  TextButton(
                      onPressed: () {
                        print("No");
                        Navigator.pop(context);
                      },
                      child: Text("No")
                  ),
                  TextButton(
                    onPressed: () {
                      voto = "$voto,$numrepre";
                      Navigator.pop(context);
                      Navigator.pop(contexto);
                    },
                    child: const Text("Si"),
                  )
                ],
              );
            },
            context: contexto);
      },
    );
  }
}
