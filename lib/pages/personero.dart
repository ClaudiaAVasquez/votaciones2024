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
            BotonCandidato(context, "Personero", Colors.green[800], 'assets/images/MichaelSantiagoLaguilaoPersonero1101.jpg', "Michael Santiago Laguilao", "1"),
            BotonCandidato(context, "Personero", Colors.blue[800], 'assets/images/OscarEstebanMoraPerez1104Personero.jpeg', "Oscar Esteban Mora Pérez", "2"),
            BotonCandidato(context, "Personero", Colors.lightBlue[300], 'assets/images/JonathanJimenez1102Personero.jpeg', "Jonathan Jimémez Casallas", "4"),
            BotonCandidato(context, "Personero", Colors.purple, 'assets/images/MariaFernandaFandinoFranco1103Personero.jpeg', "María Fernanda Fandiño Franco", "3"),
            BotonCandidato(context, "Personero", Colors.white, 'assets/images/Votoenblanco.jpg', "Voto en Blanco", "B"),
          ]),
    );
  }
}
