//Listas
//https://www.youtube.com/watch?v=uhnPQUDbfoo

//import 'dart:js';

import 'package:flutter/material.dart';
import 'autenticacionjardin.dart';
import 'globales.dart';

// Clase para almacenar el nombre del curso

class cursosGrado {
  String cursoSel="";

  cursosGrado(String nombreCurso){
    this.cursoSel = nombreCurso;
  }
}

class cursos extends StatelessWidget {
  const cursos({super.key, required this.texto});
  final String texto;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CURSO"),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
      ),
      body: escogercurso(texto: texto),
    );
  }
}

class escogercurso extends StatefulWidget {

  const escogercurso({Key? key, required this.texto}) : super(key: key);
  final String texto;

  @override
  State<StatefulWidget> createState() {
    return escogercursoState(texto: texto);
  }
}

class escogercursoState extends State<escogercurso> {
  escogercursoState({Key? key, required this.texto});
  final String texto;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("Escoger Curso para votar"),
        centerTitle: true,
      ),
      body: funciongrado(texto),
    );
  }
}

// Crea y retorna la lista de cursos de un grado
// Recibe como parametro el nombre del grado, por ejemplo "Transicion"
// y la cantidad de cursos que tiene ese grado

List<cursosGrado> crearCursos(String grado, int cantidad) {
  List<cursosGrado> listaCursos = [];

  for(int i = 1; i <= cantidad; i++) {
    String numerocurso2 = (i < 10) ? "0$i" : i.toString() ;
    cursosGrado nombrecurso = cursosGrado(grado + numerocurso2);

    listaCursos.add(nombrecurso);
  }
  return listaCursos;
}

funciongrado(texto) {
  List<cursosGrado> _curso;
  String usuario;
  String password;

  // Dependiendo del grado que se va a seleccionar, manda a crear la lista de ese grado solamente
  // y asigna las variables para el usuario y la contraseña correspondientes al grado

  nivel = texto;
  switch (texto) {
    case "PreJardin":
      _curso = crearCursos("PreJardin", (jornada == "M" ? 1 : 0));
      usuario = "Preescolar";
      password = "prejartrans";
    case "Jardin":
      _curso = crearCursos("Jardin", (jornada == "M" ? 1 : 0));
      usuario = "Preescolar";
      password = "prejartrans";
    case "Transicion":
      _curso = crearCursos("Transicion", (jornada == "M" ? 1 : 0));
      usuario = "Preescolar";
      password = "prejartrans";
    case "Primero":
      _curso = crearCursos("1", (jornada == "M" ? 1 : 9));
      usuario = "Primaria1";
      password = "primerosegundo";
    case "Segundo":
      _curso = crearCursos("2", (jornada == "M" ? 1 : 9));
      usuario = "Primaria1";
      password = "primerosegundo";
    case "Tercero":
      _curso = crearCursos("3", 6);
      usuario = "Primaria2";
      password = "tercuarquin";
    case "Cuarto":
      _curso = crearCursos("4", 6);
      usuario = "Primaria2";
      password = "tercuarquin";
    case "Quinto":
      _curso = crearCursos("5", 6);
      usuario = "Primaria2";
      password = "tercuarquin";
    case "Sexto":
      _curso = crearCursos("6", 8);
      usuario = "Secundaria";
      password = "secundaria6a11";
    case "Septimo":
      _curso = crearCursos("7", (jornada == "M" ? 5 : 3));
      usuario = "Secundaria";
      password = "secundaria6a11";
    case "Octavo":
      _curso = crearCursos("8", 8);
      usuario = "Secundaria";
      password = "secundaria6a11";
    case "Noveno":
      _curso = crearCursos("9", 6);
      usuario = "Secundaria";
      password = "secundaria6a11";
    case "Decimo":
      _curso = crearCursos("10", 5);
      usuario = "Secundaria";
      password = "secundaria6a11";
    case "Once":
      _curso = crearCursos("11", 5);
      usuario = "Secundaria";
      password = "secundaria6a11";
    default:
      _curso = [];
      usuario = "";
      password = "";
  }

  // Muestra la ventana con la lista de cursos creados para el grado seleccionado

  return Center(
    child: Container(
      width: 400,
      child: ListView.builder(
          itemCount: _curso.length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                curso = "${_curso[index].cursoSel}";
                print("curso seleccionado $curso");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>
                      ingresar(usu: usuario,
                          pass: password), //Llama la pagina Sede
                ));
              },
              
              title: Text(_curso[index].cursoSel),
              tileColor: Colors.grey[300],
              titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
              leading: CircleAvatar(
                child: Text(
                    _curso[index].cursoSel.substring(_curso[index].cursoSel.length - 2)),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            );
          }),
    ),
  );
}
