import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cabildante.dart';

class contralor extends StatelessWidget{
  contralor({Key? key, required this.archivo, required this.voto}) : super(key : key);
  final File archivo;
  final String voto;

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

              BotonContralor(context, Colors.pinkAccent[100], 'assets/images/DannaSofiaSalamanca.jpg', "Danna Sofia Salamanca", "7", archivo, voto),
              BotonContralor(context, Colors.yellow, 'assets/images/DianaNataliMunoz.jpg', "Diana Natali Muñoz", "4", archivo, voto),
              BotonContralor(context, Colors.deepPurple, 'assets/images/JoelStevenMedina.jpg', "Joel Steven Medina", "3", archivo, voto),
              BotonContralor(context, Colors.orange, 'assets/images/AngieLorenaDiaz.jpg', "Angie Lorena Diaz", "6", archivo, voto),
              BotonContralor(context, Colors.lightGreenAccent, 'assets/images/AlexandraUrdaneta.jpg', "Alexandra Urdaneta", "5", archivo, voto),
              BotonContralor(context, Colors.blue, 'assets/images/SarayNicoleElegalde.jpg', "Saray Nicole Elegalde", "1", archivo, voto),
              BotonContralor(context, Colors.pink, 'assets/images/KarolDanielaLopez.jpg', "Karol Daniela López", "2", archivo, voto),
              BotonContralor(context, Colors.white, 'assets/images/Votoenblanco.jpg', "Voto en BLANCO", "B", archivo, voto),

            ]
        ),
      ),
    );
  }

  Widget BotonContralor(BuildContext contexto, var color, String imagen, String nombreContralor, String numContralor, File archivo, String voto) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget> [
            Image.asset(imagen, height: 200, width: 200, ),
            Text(" $nombreContralor ", style: const TextStyle(backgroundColor: Colors.white, color: Colors.black, fontSize: 15),),
          ]
      ),
      onPressed: () {
        showDialog(
            barrierDismissible: false,                  //No quita el cuadro de Dialogo al darle clic por fuera de este
            builder: (contexto){
              return AlertDialog(
                title: Text("Votación Contralor"),
                content: Text("Estas votando por $nombreContralor, estas seguro?"),
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
                      voto = voto + "," + numContralor;
                      Navigator.pushAndRemoveUntil(
                        contexto,
                        MaterialPageRoute(builder: (contexto) => cabildante(archivo: archivo, voto: voto),
                      ),
                          (Route<dynamic> route) => false,);
                    },
                    child: Text("Si"),
                  )
                ],
              );
            },
            context: contexto);
      },
    );
  }
}