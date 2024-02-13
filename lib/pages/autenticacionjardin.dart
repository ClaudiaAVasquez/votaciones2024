import 'package:flutter/material.dart';
import 'iniciarvotaciones.dart';

import 'archivo.dart';
import "dart:io";

final leeUsuario = TextEditingController();
final leePassword = TextEditingController();
final leenumtablet = TextEditingController();

var usuario = "";
var password = "";
var numtablet = "";

class ingresar extends StatelessWidget {
  const ingresar(
      {super.key, required this.usu, required this.pass});
  final String usu, pass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Autenticación"),
      ),
      body: cuerpo(usu: usu, pass: pass),
    );
  }
}

class cuerpo extends StatefulWidget {
  const cuerpo(
      {super.key, required this.usu, required this.pass});
  final String usu, pass;

  @override
  State<StatefulWidget> createState() {
    return cuerpoState(usu: usu, pass: pass);
  }
}

class cuerpoState extends State<cuerpo> {
  cuerpoState(
      {Key? key, required this.usu, required this.pass});
  final String usu, pass;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/escudoNC.jpg'),
            fit: BoxFit.contain,
          )),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Sign_in(context),
            campousuario(context),
            campocontrasena(context),
            campotablet(context),
            const SizedBox(
              height: 10,
            ),
            botonentrar(context, usu, pass)
          ],
        ),
      ),
    );
  }
}

Widget Sign_in(BuildContext context) {
  return const Text(
    "Iniciar Sesión",
    style: TextStyle(
        color: Colors.black87, fontSize: 35.0, fontWeight: FontWeight.bold),
  );
}

Widget campousuario(BuildContext context) {
//  var textController = TextEditingController();
  return Container(
    padding: const EdgeInsets.all(20), //Darle bordes al TextField
    child: TextField(
      decoration: const InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.pink,
            )),
        labelText: "Nombre de usuario",
        hintText: "Usuario",
        prefixIcon: Icon(Icons.person),
        fillColor: Colors.white,
        filled: true,
      ),
      keyboardType: TextInputType.name,
      controller: leeUsuario,
    ),
  );
}

Widget campocontrasena(BuildContext context) {
  return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: "Contraseña",
          prefixIcon: Icon(Icons.lock),
          fillColor: Colors.white,
          filled: true,
        ),
        keyboardType: TextInputType.name,
        controller: leePassword,
      ));
}

Widget campotablet(BuildContext context) {
  return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Número de Tablet",
          prefixIcon: Icon(Icons.tablet_android),
          fillColor: Colors.white,
          filled: true,
        ),
        controller: leenumtablet,
      ));
}

Widget botonentrar(BuildContext context, String usu, String pass) {
  return TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        backgroundColor: Colors.blueAccent,
      ),
      onPressed: () async {
        usuario = leeUsuario.text;
        password = leePassword.text;
        numtablet = leenumtablet.text;
        if ((usuario == usu) && (password == pass)) {
          File archivo = await nombreArchivo(numtablet);
          leeUsuario.text = '';
          leePassword.text = '';
          leenumtablet.text = '';
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
                builder: (context) => iniciarvotaciones(archivo: archivo)),
              (Route<dynamic> route) => false,
          );
        }
        else {
          showDialog(
            barrierDismissible:
            false,
            //No quita el cuadro de Dialogo al darle clic por fuera de este
            builder: (context) {
              return
                AlertDialog(
                    title: Text("Error de Usuario"),
                    content: Text(
                        "Usuario y contraseña no corresponden, por favor verificar"),
                    actions: <Widget>[
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("Ok")),
                    ]);
            },
            context: context,
          );
        }
      },
      child: Text("Ingresar",
          style: TextStyle(fontSize: 25, color: Colors.white)));
}