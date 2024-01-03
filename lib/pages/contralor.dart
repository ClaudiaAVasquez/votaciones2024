//https://www.youtube.com/watch?v=RyIdsu4JUBo
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cabildante.dart';

class contralor extends StatelessWidget{
  contralor({Key? key, required this.archivo, required this.person}) : super(key : key);
  final File archivo;
  final String person;

  int _contadorcontralor1 = 0;
  int _contadorcontralor2 = 0;
  int _contadorcontralor3 = 0;
  int _contadorcontralor4 = 0;
  int _contadorcontralor5 = 0;
  int _contadorcontralor6 = 0;
  int _contadorcontralor7 = 0;
  int _contadorcontralor8 = 0;


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
              RaisedButton(
                color: Colors.pinkAccent[100],
                child: Image.asset('assets/images/DannaSofiaSalamanca.jpg'),
                onPressed: () {
                  showDialog(
                      barrierDismissible: false,                  //No quita el cuadro de Dialogo al darle clic por fuera de este
                      builder: (context){
                        return AlertDialog(
                          title: Text("Votación Contralor"),
                          content: Text("Estas votando por Danna Sofia Salamanca, estas seguro?"),
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
                                print("Si");
                                _contadorcontralor1++;
                                //Navigator.pop(context);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => cabildante(archivo: archivo, person: person, contra: "7")),
                                );
                              },
                              child: Text("Si"),
                            )
                          ],
                        );
                      },
                      context: context);
                },
              ),

              RaisedButton(
                color: Colors.yellow,
                child: Image.asset('assets/images/DianaNataliMunoz.jpg'),
                onPressed: () {
                  showDialog(
                      barrierDismissible: false,                  //No quita el cuadro de Dialogo al darle clic por fuera de este
                      builder: (context){
                        return AlertDialog(
                          title: Text("Votación Contralor"),
                          content: Text("Estas votando por Diana Natali Muñoz, estas seguro?"),
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
                                print("Si");
                                _contadorcontralor2++;
                                //Navigator.pop(context);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => cabildante(archivo: archivo, person: person, contra: "4")),
                                );
                              },
                              child: Text("Si"),
                            )
                          ],
                        );
                      },
                      context: context);
                },
              ),

              RaisedButton(
                color: Colors.deepPurple,
                child: Image.asset('assets/images/JoelStevenMedina.jpg'),
                onPressed: () {
                  showDialog(
                      barrierDismissible: false,                  //No quita el cuadro de Dialogo al darle clic por fuera de este
                      builder: (context){
                        return AlertDialog(
                          title: Text("Votación Contralor"),
                          content: Text("Estas votando por Joel Steven Medina, estas seguro?"),
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
                                print("Si");
                                _contadorcontralor3++;
                                //Navigator.pop(context);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => cabildante(archivo: archivo, person: person, contra: "3")),
                                );
                              },
                              child: Text("Si"),
                            )
                          ],
                        );
                      },
                      context: context);
                },
              ),

              RaisedButton(
                color: Colors.orange,
                child: Image.asset('assets/images/AngieLorenaDiaz.jpg'),
                onPressed: () {
                  showDialog(
                      barrierDismissible: false,                  //No quita el cuadro de Dialogo al darle clic por fuera de este
                      builder: (context){
                        return AlertDialog(
                          title: Text("Votación Contralor"),
                          content: Text("Estas votando por Angie Lorena Diaz, estas seguro?"),
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
                                print("Si");
                                _contadorcontralor4++;
                                //Navigator.pop(context);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => cabildante(archivo: archivo, person: person, contra: "6")),
                                );
                              },
                              child: Text("Si"),
                            )
                          ],
                        );
                      },
                      context: context);
                },
              ),

              RaisedButton(
                color: Colors.lightGreenAccent,
                child: Image.asset('assets/images/AlexandraUrdaneta.jpg'),
                onPressed: () {
                  showDialog(
                      barrierDismissible: false,                  //No quita el cuadro de Dialogo al darle clic por fuera de este
                      builder: (context){
                        return AlertDialog(
                          title: Text("Votación Contralor"),
                          content: Text("Estas votando por Alexandra Urdaneta, estas seguro?"),
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
                                print("Si");
                                _contadorcontralor5++;
                                //Navigator.pop(context);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => cabildante(archivo: archivo, person: person, contra: "5")),
                                );
                              },
                              child: Text("Si"),
                            )
                          ],
                        );
                      },
                      context: context);
                },
              ),

              RaisedButton(
                color: Colors.blue,
                child: Image.asset('assets/images/SarayNicoleElegalde.jpg'),
                onPressed: () {
                  showDialog(
                      barrierDismissible: false,                  //No quita el cuadro de Dialogo al darle clic por fuera de este
                      builder: (context){
                        return AlertDialog(
                          title: Text("Votación Contralor"),
                          content: Text("Estas votando por Saray Nicole Elegalde, estas seguro?"),
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
                                print("Si");
                                _contadorcontralor6++;
                                //Navigator.pop(context);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => cabildante(archivo: archivo, person: person, contra: "1")),
                                );
                              },
                              child: Text("Si"),
                            )
                          ],
                        );
                      },
                      context: context);
                },
              ),

              RaisedButton(
                color: Colors.pink,
                child: Image.asset('assets/images/KarolDanielaLopez.jpg'),
                onPressed: () {
                  showDialog(
                      barrierDismissible: false,                  //No quita el cuadro de Dialogo al darle clic por fuera de este
                      builder: (context){
                        return AlertDialog(
                          title: Text("Votación Contralor"),
                          content: Text("Estas votando por Karol Daniela López, estas seguro?"),
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
                                print("Si");
                                _contadorcontralor7++;
                                //Navigator.pop(context);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => cabildante(archivo: archivo, person: person, contra: "2")),
                                );
                              },
                              child: Text("Si"),
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
                          title: Text("Votación Contralor"),
                          content: Text("Estas votando en BLANCO, estas seguro?"),
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
                                print("Si");
                                _contadorcontralor8++;
                                //Navigator.pop(context);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => cabildante(archivo: archivo, person: person, contra: "B")),
                                );
                              },
                              child: Text("Si"),
                            )
                          ],
                        );
                      },
                      context: context);
                },
              ),
            ]
        ),
      ),
    );
  }
}