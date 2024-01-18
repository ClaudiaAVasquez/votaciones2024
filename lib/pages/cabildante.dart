//https://www.youtube.com/watch?v=RyIdsu4JUBo

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'archivo.dart';
import 'iniciarvotaciones.dart';
import 'personero.dart';
import 'dart:io';

var fecha = DateTime.now();

int _contadorcabildante1 = 0;
int _contadorcabildante2 = 0;
int _contadorcabildante3 = 0;
int _contadorcabildante4 = 0;

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

/*              RaisedButton(
                color: Colors.deepOrangeAccent,
                child: Image.asset('assets/images/MariaValentinaGonzalez.jpg'),
                onPressed: () {
                  showDialog(
                      barrierDismissible: false,                  //No quita el cuadro de Dialogo al darle clic por fuera de este
                      builder: (context){
                        return AlertDialog(
                          title: Text("CODIGO DE VOTACIÓN"),
                          content: Text(person + contra + cabil),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                _contadorcabildante1++;
                                cabil = "3";
                                guardarvoto(archivo, person, contra, cabil);
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => iniciarvotaciones(archivo: archivo)),
                                  );
                                },
                                child: Text("Aceptar"),
                            )
                          ],
                        );
                      },
                      context: context);
                },
              ),
              RaisedButton(
                color: Colors.pink[100],
                child: Image.asset('assets/images/KarolValentinaDiaz.jpg'),
                onPressed: () {
                  showDialog(
                      barrierDismissible: false,                  //No quita el cuadro de Dialogo al darle clic por fuera de este
                      builder: (context){
                        return AlertDialog(
                          title: Text("CODIGO DE VOTACIÓN"),
                          content: Text(person + contra + cabil),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                cabil = "2";
                                _contadorcabildante2++;
                                guardarvoto(archivo, person, contra, cabil);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => iniciarvotaciones(archivo: archivo)),
                                );
                              },
                              child: Text("Aceptar"),
                            )
                          ],
                        );
                      },
                      context: context);
                },
              ),

              RaisedButton(
                color: Colors.red,
                child: Image.asset('assets/images/SharickMelissaMoreno.jpg'),
                onPressed: () {
                  showDialog(
                      barrierDismissible: false,                  //No quita el cuadro de Dialogo al darle clic por fuera de este
                      builder: (context){
                        return AlertDialog(
                          title: Text("CODIGO DE VOTACIÓN"),
                          content: Text(person + contra + cabil),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                cabil = "1";
                                _contadorcabildante3++;
                                guardarvoto(archivo, person, contra, cabil);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => iniciarvotaciones(archivo: archivo)),
                                );
                              },
                              child: Text("Aceptar"),
                            )
                          ],
                        );
                      },
                      context: context);
                },
              ),
              RaisedButton(
                color: Colors.white,
                child: Image.asset('assets/images/Votoenblanco.jpg'),
                onPressed: () {
                  showDialog(
                      barrierDismissible: false,                  //No quita el cuadro de Dialogo al darle clic por fuera de este
                      builder: (context){
                        return AlertDialog(
                          title: Text("CODIGO DE VOTACIÓN"),
                          content: Text(person + contra + cabil),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                cabil = "B";
                                _contadorcabildante4++;
                                guardarvoto(archivo, person, contra, cabil);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => iniciarvotaciones(archivo: archivo)),
                                );
                              },
                              child: Text("Aceptar"),
                            )
                          ],
                        );
                      },
                      context: context
                  );
                },
              ),*/
            ]
        ),
      ),
    );
  }

  Widget BotonCabildante(BuildContext contexto, var color, String imagen, String numcabil, File archivo, String person, String contra) {

    return ElevatedButton(
    style: ElevatedButton.styleFrom(
      primary: color,
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
                      _contadorcabildante1++;       // Este contador para que se utiliza, se puede quitar ?
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
