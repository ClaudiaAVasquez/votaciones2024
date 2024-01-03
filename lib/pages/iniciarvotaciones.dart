
import 'package:flutter/material.dart';
import 'package:votaciones2/pages/personero.dart';
import 'dart:io';

import 'package:votaciones2/pages/sede.dart';

class iniciarvotaciones extends StatelessWidget {
  const iniciarvotaciones({Key? key, required this.archivo});
  final File archivo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("INICAR VOTACIONES"),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text("INICIAR VOTACIÓN", style: TextStyle(fontSize: 25,)),
                  onPressed: () {
                      Navigator.push(
                      context,
                    MaterialPageRoute(builder: (context)=> personero(archivo: archivo)));
                  }
                ),
              ]
            )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              barrierDismissible: false,                  //No quita el cuadro de Dialogo al darle clic por fuera de este
              builder: (context){
                return AlertDialog(
                  title: Text("EL ARCHIVO DE VOTACION SE ENCUENTRA GRABADO EN..."),
                  content: Text(archivo.toString()),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)=> const sede()));
                      },
                      child: Text("Aceptar"),
                    )
                  ],
                );
              },
              context: context
          );
        },
       tooltip: 'FINALIZAR VOTACIÓN',
        child: const Icon(Icons.exit_to_app_rounded),
    ),
    );
  }
}
