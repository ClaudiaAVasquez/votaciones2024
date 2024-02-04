import 'package:flutter/material.dart';
import 'pages/sede.dart';

//import 'dart:ffi';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Votaciones Gobierno Escolar IED Nueva Colombia',
      home: MyHomePage(title: 'Widgets'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Votaciones Gobierno Escolar IED Nueva Colombia"),
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 300,
                      height: 300,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image:
                            AssetImage('assets/images/primariavotaciones.jpeg'),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  const Text('GOBIERNO ESCOLAR 2024',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                  ),
                  const Text('COLEGIO NUEVA COLOMBIA IED',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
                  ElevatedButton(
                      child: const Text(
                        "Comenzar",
                        style: TextStyle(fontSize: 30),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            //MaterialPageRoute(builder: (context)=> const ingresar())  //Llama la pagina Autenticacion
                            MaterialPageRoute(
                                builder: (context) =>
                                const sede()) //Llama la pagina Sede
                        );
                      })
                ])));
  }
}
