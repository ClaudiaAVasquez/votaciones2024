import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'cursos.dart';

class sede extends StatelessWidget {
  const sede({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grados"),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            SystemChannels.platform.invokeMethod('SystemNavigator.pop');
          },
        ),
      ),
      body: escogergrados(),
    );
  }
}

class escogergrados extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return escogergradosState();
  }
}

String _value="--";

class escogergradosState extends State<escogergrados> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    TextEditingController controlador = TextEditingController(text: "");
    _value = "--";
    return Center(
        child: Row(
          children: <Widget>[

            //Card para GRADO PREJARDIN
/*            Flexible(child: Card(

              // Con esta propiedad modificamos la forma de nuestro card
              // Aqui utilizo RoundedRectangleBorder para proporcionarle esquinas circulares al Card
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),

                // Con esta propiedad agregamos margen a nuestro Card
                // El margen es la separación entre widgets o entre los bordes del widget padre e hijo
                margin: EdgeInsets.all(15),

                // Con esta propiedad agregamos elevación a nuestro card
                // La sombra que tiene el Card aumentará
                elevation: 10,
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      height: 200,
                      width: 200,
                      color: Colors.white,
                      child: Image.asset(
                        'assets/images/votacioneschiquis.jpeg', height: 200,
                        width: 200,),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: const Text("PREESCOLAR",
                          style: TextStyle(fontSize: 25, color: Colors.black),
                          textAlign: TextAlign.center,
                        ),
                    ),
                    PopupMenuButton(
                      color: Colors.white,
                      elevation: 20,
                      enabled: true,
                      onSelected: (value) {
                        setState(() {
                          _value = value
                              .toString(); //Convierte el obj value en String
                          print(_value);
                          controlador.text = _value;
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context)=> cursos(texto: controlador.text)));
                        });
                      },
                      itemBuilder: (context) =>
                      [
                        const PopupMenuItem(
                          child: Text("Pre-Jardín"),
                          value: "PreJardin",
                        ),
                       const PopupMenuItem(
                          value: "Jardin",
                          child: Text("Jardín"),
                        ),
                        const PopupMenuItem(
                          value: "Transicion",
                          child: Text('Transición'),
                          ),
                        ],
                    ),
                    Container(
                        padding: const EdgeInsets.symmetric(),
                        child: TextField(
                          controller: controlador,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            fillColor: Colors.grey[300],
                            filled: true,
                          ),
                        )
                    ),
                  ],
                )
            ),
            ),
*/
            //Card para GRADO PRIMERO Y SEGUNDO
            Flexible(child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.all(15),
                elevation: 10,
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      height: 200,
                      width: 200,
                      color: Colors.white,
                      child: Image.asset(
                        'assets/images/primariavotaciones.jpeg', height: 200,
                        width: 200,),
                    ),
                    Container(
                      child: const Text("PRIMERO Y SEGUNDO",
                          style: TextStyle(fontSize: 25, color: Colors.black), textAlign: TextAlign.center),
                      padding: EdgeInsets.all(10),
                    ),
                    PopupMenuButton(
                      color: Colors.white,
                      elevation: 20,
                      enabled: true,
                      onSelected: (value) {
                        setState(() {
                          _value = value.toString(); //Convierte el obj value en String
                          print(_value);
                          controlador.text = _value;
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context)=> cursos(texto: controlador.text)));
                        });
                      },
                      itemBuilder: (context) =>
                      [
                        const PopupMenuItem(
                          child: Text("Primero"),
                          value: "Primero",
                        ),
                        const PopupMenuItem(
                          child: Text("Segundo"),
                          value: "Segundo",
                        ),
                      ],
                    ),
                    Container(
                        padding: EdgeInsets.symmetric(),
                        child: TextField(
                          controller: controlador,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            fillColor: Colors.blueGrey,
                            filled: true,
                          ),
                        )
                    ),
                  ],
                )
            ),
            ),

            //Card para GRADO TERCERO, CUARTO Y QUINTO
            Flexible(child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.all(15),
                elevation: 10,
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      height: 200,
                      width: 200,
                      color: Colors.white,
                      child: Image.asset(
                        'assets/images/votaciones3a5.jpg', height: 200,
                        width: 200,),
                    ),
                    Container(
                      child: const Text("3° - 4° - 5°",
                          style: TextStyle(fontSize: 25, color: Colors.black), textAlign: TextAlign.center),
                      padding: EdgeInsets.all(10),
                    ),
                    PopupMenuButton(
                      color: Colors.white,
                      elevation: 20,
                      enabled: true,
                      onSelected: (value) {
                        setState(() {
                          _value = value.toString(); //Convierte el obj value en String
                          print(_value);
                          controlador.text = _value;
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context)=> cursos(texto: controlador.text)));
                        });
                      },
                      itemBuilder: (context) =>
                      [
                        const PopupMenuItem(
                          child: Text("Tercero"),
                          value: "Tercero",
                        ),
                        const PopupMenuItem(
                          child: Text("Cuarto"),
                          value: "Cuarto",
                        ),
                        const PopupMenuItem(
                          child: Text("Quinto"),
                          value: "Quinto",
                        ),
                      ],
                    ),
                    Container(
                        padding: EdgeInsets.symmetric(),
                        child: TextField(
                          controller: controlador,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            fillColor: Colors.amberAccent,
                            filled: true,
                          ),
                        )
                    ),
                  ],
                )
            ),
            ),

            //Card para SECUNDARIA
            Flexible(child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.all(15),
                elevation: 10,
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      height: 200,
                      width: 200,
                      color: Colors.white,
                      child: Image.asset(
                        'assets/images/votacionessecundaria.jpg', height: 200,
                        width: 200,),
                    ),
                    Container(
                      child: const Text("SECUNDARIA",
                          style: TextStyle(fontSize: 25, color: Colors.black), textAlign: TextAlign.center),
                      padding: EdgeInsets.all(10),
                    ),
                    PopupMenuButton(
                      color: Colors.white,
                      elevation: 20,
                      enabled: true,
                      onSelected: (value) {
                        setState(() {
                          _value = value.toString(); //Convierte el obj value en String
                          print(_value);
                          controlador.text = _value;
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context)=> cursos(texto: controlador.text)));
                        });
                      },
                      itemBuilder: (context) =>
                      [
                        const PopupMenuItem(
                          child: Text("Sexto"),
                          value: "Sexto",
                        ),
                        const PopupMenuItem(
                          child: Text("Séptimo"),
                          value: "Septimo",
                        ),
                        const PopupMenuItem(
                          child: Text("Octavo"),
                          value: "Octavo",
                        ),
                        const PopupMenuItem(
                          child: Text("Noveno"),
                          value: "Noveno",
                        ),
                        const PopupMenuItem(
                          child: Text("Décimo"),
                          value: "Decimo",
                        ),
                        const PopupMenuItem(
                          child: Text("Once"),
                          value: "Once",
                        ),
                      ],
                    ),
                    Container(
                        padding: EdgeInsets.symmetric(),
                        child: TextField(
                          controller: controlador,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            fillColor: Colors.blue,
                            filled: true,
                          ),
                        )
                    ),
                  ],
                )
            ),
            ),
          ],
        )
    );
  }
}
