import 'package:flutter/material.dart';
import 'dart:io';

import 'representante.dart';
import 'globales.dart';
import 'sede.dart';
import 'personero.dart';
import 'contralor.dart';
import 'cabildante.dart';
import 'archivo.dart';
import 'personerito.dart';

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
                    onPressed: () async {
                      voto = "";

                      if (votaPersoneritos && ((nivel == 'Primero') || (nivel == 'Segundo'))) {
                          await Navigator.push(context, MaterialPageRoute(
                              builder: (context) =>
                                  personerito()));
                      }
                      else {
                        if (votaPersonero) {
                          await Navigator.push(context, MaterialPageRoute(
                              builder: (context) =>
                                  personero()));
                        }

                        if (votaContralor) {
                          await Navigator.push(context, MaterialPageRoute(
                              builder: (context) =>
                                  contralor()));
                        }

                        if (votaCabildante) {
                          await Navigator.push(context, MaterialPageRoute(
                              builder: (context) =>
                                  cabildante()));
                        }

                        if (votaRepresentante) {
                          await Navigator.push(context, MaterialPageRoute(
                              builder: (context) =>
                                  representante()));
                        }
                      }
                      // guardar el voto

                      String resultado = guardarvoto(archivo, voto);

                      // validar la guardada del voto
                      if (resultado.isNotEmpty) {
                        //mostrar la ventana con el codigo de votacion
                        showDialog(
                          barrierDismissible:
                          false,
                          //No quita el cuadro de Dialogo al darle clic por fuera de este
                          builder: (contexto) {
                            return
                              AlertDialog(
                                  title: const Text("Su voto fue registrado exitosamente"),
                                  content: Text(
                                      "El código asignado es $resultado"),
                                  actions: <Widget>[
                                    TextButton(
                                        onPressed: () {
                                          Navigator.pop(contexto);
                                        },
                                        child: Text("Ok")),
                                  ]);
                          },
                          context: context,
                        );
                      }
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
