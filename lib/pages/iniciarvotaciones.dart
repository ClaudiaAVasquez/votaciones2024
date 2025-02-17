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

    String votoant = "";

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

                      if (votaPersoneritos && (buscarCursoPersonerito(nivel))) {
                        votoant = voto;
                        do {
                          await Navigator.push(context, MaterialPageRoute(
                              builder: (context) =>
                                  personerito()));
                        } while (voto == votoant);
                      }
                      else {
                        votoant = voto;
                        if (votaPersonero) {
                          do {
                            await Navigator.push(context, MaterialPageRoute(
                                builder: (context) =>
                                    personero()));
                          } while (voto == votoant);
                        }

                        votoant = voto;
                        if (votaContralor) {
                          do {
                            await Navigator.push(context, MaterialPageRoute(
                                builder: (context) =>
                                    contralor()));
                          } while (voto == votoant);
                        }

                        votoant = voto;
                        if (votaCabildante) {
                          do {
                            await Navigator.push(context, MaterialPageRoute(
                                builder: (context) =>
                                    cabildante()));
                          } while (voto == votoant);
                        }

                        votoant = voto;
                        if (votaRepresentante) {
                          do {
                            await Navigator.push(context, MaterialPageRoute(
                                builder: (context) =>
                                    representante()));
                          } while (voto == votoant);
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
                      else {
                        // Muestra un mensaje de error si no se puede almacenar el voto.....
                        showDialog(
                            barrierDismissible:
                            false,
                            //No quita el cuadro de Dialogo al darle clic por fuera de este
                            builder: (contexto) {
                          return
                            AlertDialog(
                                title: const Text("Error al registrar el voto"),
                                content: const Text(
                                    "No pudo guardarse el registro ni generarse codigo de vitación"),
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

  bool buscarCursoPersonerito(String nivel) {
    for (curso in CursosPersonerito) {
      if (curso == nivel) {
        return true;
      }
    }

    return false;
  }
}
