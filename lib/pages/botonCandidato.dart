import 'package:flutter/material.dart';
import 'globales.dart';

Widget BotonCandidato(BuildContext contexto, String cargo, var color, String imagen, String nombreCandidato, String codigoVoto) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0)),
      ),
      child: FittedBox(child: Column(crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(imagen, height: 220),
            const SizedBox(height: 10,),
            Text(" $nombreCandidato ", style: const TextStyle(
                backgroundColor: Colors.white,
                color: Colors.black,
                fontSize: 15),),
          ]
        ),
      ),
      onPressed: () {
        showDialog(
            barrierDismissible: false,
            //No quita el cuadro de Dialogo al darle clic por fuera de este
            builder: (context) {
              return AlertDialog(
                title: Text("Votación para $cargo"),
                content: Text(
                    "Estas votando por $nombreCandidato, estas seguro?"),
                actions: <Widget>[
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("No")),
                  TextButton(
                    onPressed: () {
                      voto = (voto.isEmpty ? codigoVoto : "$voto,$codigoVoto");
                      Navigator.pop(context);
                      Navigator.pop(contexto);
                    },
                    child: const Text("Si"),
                  )
                ],
              );
            },
            context: contexto);
      });
}
