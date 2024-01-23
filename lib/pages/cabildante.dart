import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'archivo.dart';
import 'iniciarvotaciones.dart';
import 'personero.dart';
import 'dart:io';

var fecha = DateTime.now();

class cabildante extends StatelessWidget{
  cabildante({Key? key, required this.archivo, required this.person, required this.contra});
  final File archivo;
  final String person;
  final String contra;
  var cabil = "0";
  var codigo;

  @override
  Widget build(BuildContext context){
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
              BotonCabildante(context, Colors.deepOrangeAccent, 'assets/images/MariaValentinaGonzalez.jpg', "3", archivo, person, contra),
              BotonCabildante(context, Colors.pink[100], 'assets/images/KarolValentinaDiaz.jpg', "2", archivo, person, contra),
              BotonCabildante(context, Colors.red, 'assets/images/SharickMelissaMoreno.jpg', "1", archivo, person, contra),
              BotonCabildante(context, Colors.white, 'assets/images/Votoenblanco.jpg', "B", archivo, person, contra),
            ]
        ),
      ),
    );
  }

  Widget BotonCabildante(BuildContext contexto, var color, String imagen, String numcabil, File archivo, String person, String contra) {

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
      ),
      child: Image.asset(imagen),
      onPressed: () {
        showDialog(
            barrierDismissible: false,                  //No quita el cuadro de Dialogo al darle clic por fuera de este
            builder: (contexto){
              return AlertDialog(
                title: Text("CODIGO DE VOTACIÓN"),
                content: Text(person + contra + cabil),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      cabil = numcabil;
                      guardarvoto(archivo, person, contra, cabil);
                      Navigator.push(
                        contexto,
                        MaterialPageRoute(
                            builder: (context) => iniciarvotaciones(archivo: archivo)),
                      );
                    },
                    child: Text("Aceptar"),
                  )
                ],
              );
            },
            context: contexto);
      },
    );
  }
}
