//import 'dart:js';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'contralor.dart';

import 'archivo.dart';

class personero extends StatelessWidget {
  const personero({Key? key, required this.archivo}) : super(key: key);
  final File archivo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PERSONERO"),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.help),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      body: votarpersoneros(archivo: archivo),
    );
  }
}

class votarpersoneros extends StatefulWidget {
  const votarpersoneros({Key? key, required this.archivo}) : super(key: key);
  final File archivo;
  @override
  State<StatefulWidget> createState() {
    return votarpersonerosState(archivo: archivo);
  }
}

class votarpersonerosState extends State<votarpersoneros> {
  votarpersonerosState({Key? key, required this.archivo});
  final File archivo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: GridView.count(
          crossAxisCount: 3, //Cuántos elementos tendra de forma horizontal máximo acomada 3 por fila
          crossAxisSpacing: 3,
          mainAxisSpacing: 3,
          children: <Widget>[
            BotonPersonero(context, Colors.pinkAccent[100], 'assets/images/AnaSofiaArtunduaga.jpg', "Ana Sofia Artunduaga", "2", archivo),
            BotonPersonero(context, Colors.deepPurpleAccent, 'assets/images/AndresCamiloChipatecua.jpg', "Andres Camilo Chipatecua", "4", archivo),
            BotonPersonero(context, Colors.pink, 'assets/images/PaulaAndreaVillamil.jpg', "Paula Andrea Villamil", "1", archivo),
            BotonPersonero(context, Colors.lightGreenAccent, 'assets/images/AshelyKatheryneTenza.jpg', "Ashely Katherine Tenza", "5", archivo),
            BotonPersonero(context, Colors.red, 'assets/images/EvelynSaenz.jpg', "Evelyn Saenz", "6", archivo),
            BotonPersonero(context, Colors.white, 'assets/images/Votoenblanco.jpg', "Voto en Blanco", "B", archivo),
          ]),
    );
  }

  Widget BotonPersonero(BuildContext contexto, var color, String imagen, String nombrePersonero, String numPerson, File archivo){
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        ),
        child: Image.asset(imagen),
        onPressed: () {
          showDialog(
              barrierDismissible:
              false, //No quita el cuadro de Dialogo al darle clic por fuera de este
              builder: (contexto) {
                return AlertDialog(
                  title: Text("Votación Personero"),
                  content: Text(
                      "Estas votando por $nombrePersonero, estas seguro?"),
                  actions: <Widget>[
                    TextButton(
                        onPressed: () {
                          print("No");
                          Navigator.pop(contexto);
                        },
                        child: Text("No")),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (contexto) => contralor(
                                  archivo: archivo, person: numPerson)),
                        );
                      },
                      child: Text("Si"),
                    )
                  ],
                );
              },
              context: contexto);
        });
  }
}
