import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
    // Set landscape orientation
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
    return Scaffold(
        appBar: AppBar(
          title: const Text("Votaciones Gobierno Escolar IED Nueva Colombia"),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 350,
                      height: 350,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image:
                            AssetImage('assets/images/escudoNC.jpg'),
                            fit: BoxFit.scaleDown),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  const Text('GOBIERNO ESCOLAR 2025',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                  ),
                  const Text('COLEGIO NUEVA COLOMBIA IED',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
                  const SizedBox(height: 40,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red, // background
                      foregroundColor: Colors.white, // foreground
                    ),
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
