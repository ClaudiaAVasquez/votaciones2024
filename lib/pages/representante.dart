import 'package:flutter/material.dart';

import 'archivo.dart';
import 'iniciarvotaciones.dart';
import 'dart:io';

var cabil = "0";

class representante extends StatelessWidget{
  representante({Key? key, required this.archivo, required this.voto});
  final File archivo;
  final String voto;


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
        listaRepresentantes.add(BotonRepresentante(context, Colors.blueGrey, 'assets/images/bart.png', "Bart Simpson", "1", archivo, voto));
        listaRepresentantes.add(BotonRepresentante(context, Colors.cyan, 'assets/images/lisa.jpeg', "Lisa Simpson", "2", archivo, voto));
      case "301":
        listaRepresentantes.add(BotonRepresentante(context, Colors.blueGrey, 'assets/images/piolin.png', "Piolin", "3", archivo, voto));
        listaRepresentantes.add(BotonRepresentante(context, Colors.cyan, 'assets/images/silvestre.jpeg', "Silvestre", "2", archivo, voto));
      case "1101":
        listaRepresentantes.add(BotonRepresentante(context, Colors.blueGrey, 'assets/images/taz.jpeg', "Demonio de Tazmania", "3", archivo, voto));
        listaRepresentantes.add(BotonRepresentante(context, Colors.cyan, 'assets/images/bugs.jpeg', "Bugs Bunny", "2", archivo, voto));
      default:
        listaRepresentantes.add(BotonRepresentante(context, Colors.white, 'assets/images/finalizar.jpeg', "Finalizar Votacion", "0", archivo, voto));
    }

    return listaRepresentantes;
  }

  // Genera el boton para cada candidato

  Widget BotonRepresentante(BuildContext contexto, var color, String imagen, String nombreRepresentante, String numrepre, File archivo, String voto) {

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget> [
          Image.asset(imagen, height: 200, width: 200, ),
          Text(" $nombreRepresentante ", style: const TextStyle(backgroundColor: Colors.white, color: Colors.black, fontSize: 15),),
        ],
      ),
      onPressed: () {
        showDialog(
            barrierDismissible: false,                  //No quita el cuadro de Dialogo al darle clic por fuera de este
            builder: (contexto){
              return AlertDialog(
                title: const Text("Votacion Representante"),
                content: Text(
                    "Estas votando por $nombreRepresentante, estas seguro?"),
                actions: <Widget>[
                  TextButton(
                      onPressed: () {
                        print("No");
                        Navigator.pop(contexto);
                      },
                      child: Text("No")
                  ),
                  TextButton(
                    onPressed: () {
                      //Navigator.pop(context);
                      voto = "$voto,$numrepre";
                      guardarvoto(archivo, voto); // falta agregar el nuevo parametro

                      Navigator.pushAndRemoveUntil(
                        contexto,
                        MaterialPageRoute(
                            builder: (context) => iniciarvotaciones(archivo: archivo)),
                            (Route<dynamic> route) => false,
                      );
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
