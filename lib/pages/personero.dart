import 'package:flutter/material.dart';
import 'botonCandidato.dart';

class personero extends StatelessWidget {
  personero({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PERSONERO"),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.help),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      body: votarpersoneros(),

    );
  }
}

class votarpersoneros extends StatefulWidget {
  votarpersoneros({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return votarpersonerosState();
  }
}

class votarpersonerosState extends State<votarpersoneros> {
  votarpersonerosState({Key? key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: GridView.count(
          crossAxisCount: 3, //Cuántos elementos tendra de forma horizontal máximo acomada 3 por fila
          crossAxisSpacing: 3,
          mainAxisSpacing: 3,
          children: <Widget>[
            BotonCandidato(context, "Personero", Colors.deepPurpleAccent, 'assets/images/MychellAlvear.jpg', "Mychell Sofía Alvear Salas", "2"),
            BotonCandidato(context, "Personero", Colors.green, 'assets/images/JeroenAndresTenza.jpg', "Jeroen Andrés Tenza", "4"),
            BotonCandidato(context, "Personero", Colors.red, 'assets/images/SantiagoBernal.jpg', "Jair Santiago Bernal", "7"),
            BotonCandidato(context, "Personero", Colors.white, 'assets/images/Votoenblanco.jpg', "Voto en Blanco", "B"),
          ]),
    );
  }
}
