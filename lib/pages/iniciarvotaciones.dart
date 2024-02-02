import 'package:flutter/material.dart';
import 'personero.dart';
import 'dart:io';

import 'sede.dart';

//String votoPersonero = "", votoContralor = "", votoCabildante = "", votoRepresentante = "";

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
                ElevatedButton(
                    child: const Text("INICIAR VOTACIÓN",
                        style: TextStyle(
                          fontSize: 25,
                        )),
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => personero(archivo: archivo)),
                        (Route<dynamic> route) => false,)
                      ;
                    }
                ),
              ])),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              showDialog(
                  barrierDismissible:
                  false, //No quita el cuadro de Dialogo al darle clic por fuera de este
                  builder: (context) {
                    return AlertDialog(
                      title:
                      const Text("EL ARCHIVO DE VOTACION SE ENCUENTRA GRABADO EN..."),
                      content: Text(archivo.toString()),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const sede()));
                          },
                          child: const Text("Aceptar"),
                        )
                      ],
                    );
                  },
                  context: context);
            },
            tooltip: 'FINALIZAR VOTACIÓN',
            child: const Icon(Icons.exit_to_app_rounded),
          ),
    );
  }
}
