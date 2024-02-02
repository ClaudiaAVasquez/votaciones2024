import 'package:flutter/material.dart';

import 'representante.dart';
import 'dart:io';

var cabil = "0";

class cabildante extends StatelessWidget{
  cabildante({Key? key, required this.archivo, required this.voto});
  final File archivo;
  final String voto;


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
              BotonCabildante(context, Colors.deepOrangeAccent, 'assets/images/MariaValentinaGonzalez.jpg', "María Valentina Gonzalez", "3", archivo, voto),
              BotonCabildante(context, Colors.pink[100], 'assets/images/KarolValentinaDiaz.jpg', "Karol Valentina Díaz", "2", archivo, voto),
              BotonCabildante(context, Colors.red, 'assets/images/SharickMelissaMoreno.jpg', "Sharick Melissa Moreno", "1", archivo, voto),
              BotonCabildante(context, Colors.white, 'assets/images/Votoenblanco.jpg', "Voto en Blanco", "B", archivo, voto),
            ]
        ),
      ),
    );
  }

  Widget BotonCabildante(BuildContext contexto, var color, String imagen, String nombreCabildante, String numcabil, File archivo, String voto) {

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget> [
            Image.asset(imagen, height: 200, width: 200, ),
            Text(" $nombreCabildante ", style: const TextStyle(backgroundColor: Colors.white, color: Colors.black, fontSize: 15),),
          ]
      ),
      onPressed: () {
        showDialog(
            barrierDismissible: false,                  //No quita el cuadro de Dialogo al darle clic por fuera de este
            builder: (contexto) {
              return AlertDialog(
                title: const Text("Votación Cabildante"),
                content: Text(
                    "Estas votando por $nombreCabildante, estas seguro?"),
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
                      voto = "$voto,$numcabil";
                      Navigator.pushAndRemoveUntil(
                        contexto,
                        MaterialPageRoute(builder: (contexto) =>
                            representante(archivo: archivo, voto: voto),
                        ),
                            (Route<dynamic> route) => false,);
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
