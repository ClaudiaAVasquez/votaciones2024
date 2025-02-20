import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'globales.dart';

import 'cursos.dart';

class sede extends StatelessWidget {
  const sede({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grados"),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.highlight_off_outlined),
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

  bool switchValue = false ;
  bool mostrarPreescolar = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    TextEditingController controlador = TextEditingController(text: "");
    _value = "--";

    return Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Seleccione la jornada:     Mañana   ", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                  CupertinoSwitch(
                    // This bool value toggles the switch.
                    value: switchValue,
                    activeTrackColor: CupertinoColors.activeBlue,
                    onChanged: (bool? value) {
                      // This is called when the user toggles the switch.
                      setState(() {
                        switchValue = value ?? false;
                        jornada = (switchValue ? "T" : "M");
                        mostrarPreescolar = (jornada == "M");
                      });
                    },
                  ),
                  Text("  Tarde", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                ]
              ),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  //Card para GRADO PREJARDIN
                  Visibility(
                    visible: mostrarPreescolar,
                    child: Flexible(child: Card(

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
                          Container(
                            padding: const EdgeInsets.symmetric(),
                            decoration: BoxDecoration(color: Colors.grey[300]),
                            width: double.infinity,
                            child: Center(
                              child: PopupMenuButton(
                                color: Colors.white,
                                elevation: 20,
                                enabled: true,
                                onSelected: (value) {
                                  setState(() {
                                    _value = value
                                        .toString(); //Convierte el obj value en String

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
                            ),
                          ),
                        ],
                      )
                  ),
                  ),
                  ),
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
                          Container(
                            padding: const EdgeInsets.symmetric(),
                            decoration: BoxDecoration(color: Colors.blueGrey),
                            width: double.infinity,
                            child: Center(
                              child: PopupMenuButton(
                                color: Colors.white,
                                elevation: 20,
                                enabled: true,
                                onSelected: (value) {
                                  setState(() {
                                    _value = value.toString(); //Convierte el obj value en String

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
                            ),
                          ),
                        ],
                      )
                  ),
                  ),

                  //Card para GRADO TERCERO, CUARTO Y QUINTO
                  Visibility(
                    visible: !mostrarPreescolar,
                    child: Flexible(child: Card(
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
                            Container(
                              padding: const EdgeInsets.symmetric(),
                              decoration: BoxDecoration(color: Colors.amberAccent),
                              width: double.infinity,
                              child: Center(
                                child: PopupMenuButton(
                                  color: Colors.white,
                                  elevation: 20,
                                  enabled: true,
                                  onSelected: (value) {
                                    setState(() {
                                      _value = value.toString(); //Convierte el obj value en String

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
                              ),
                            ),
                          ],
                        )
                    ),
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
                          Container(
                            padding: const EdgeInsets.symmetric(),
                            decoration: BoxDecoration(color: Colors.blue),
                            width: double.infinity,
                            child: Center(
                              child: PopupMenuButton(
                                color: Colors.white,
                                elevation: 20,
                                enabled: true,
                                onSelected: (value) {
                                  setState(() {
                                    _value = value.toString(); //Convierte el obj value en String

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
                            ),
                          ),
                        ],
                      )
                  ),
                  ),
                ],
              ),
            ],
          ),
        )
    );
  }
}
