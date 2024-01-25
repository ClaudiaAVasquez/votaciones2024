import 'package:flutter/material.dart';
import 'iniciarvotaciones.dart';
import 'personero.dart';

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
      {Key? key, required this.usu, required this.pass, required this.curso})
      : super(key: key);
  final String usu, pass, curso;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Autenticación"),
      ),
      body: cuerpo(usu: usu, pass: pass, curso: curso),
    );
  }
}

class cuerpo extends StatefulWidget {
  const cuerpo(
      {Key? key, required this.usu, required this.pass, required this.curso})
      : super(key: key);
  final String usu, pass, curso;

  @override
  State<StatefulWidget> createState() {
    return cuerpoState(usu: usu, pass: pass, curso: curso);
  }
}

class cuerpoState extends State<cuerpo> {
  cuerpoState(
      {Key? key, required this.usu, required this.pass, required this.curso});
  final String usu, pass, curso;

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
            botonentrar(context, usu, pass, curso)
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
  var textController = TextEditingController();
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

Widget botonentrar(
    BuildContext context, String usu, String pass, String curso) {
  return TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        backgroundColor: Colors.blueAccent,
      ),
      onPressed: () async {
        usuario = leeUsuario.text;
        password = leePassword.text;
        numtablet = leenumtablet.text;
        File archivo = await nombrearchivo(curso, numtablet);
        if ((usuario == usu) && (password == pass)) {
          leeUsuario.text = '';
          leePassword.text = '';
          leenumtablet.text = '';
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => iniciarvotaciones(archivo: archivo)),
          );
        }
      },
      child: Text("Ingresar",
          style: TextStyle(fontSize: 25, color: Colors.white)));
}