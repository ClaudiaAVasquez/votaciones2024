import 'package:flutter/material.dart';
import 'botonCandidato.dart';

class personerito extends StatelessWidget {
  personerito({super.key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PERSONERITO"),
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
      body: votarpersoneritos(),

    );
  }
}

class votarpersoneritos extends StatefulWidget {
  votarpersoneritos({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return votarpersoneritosState();
  }
}

class votarpersoneritosState extends State<votarpersoneritos> {
  votarpersoneritosState({Key? key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: GridView.count(
          crossAxisCount: 3, //Cuántos elementos tendra de forma horizontal máximo acomada 3 por fila
          crossAxisSpacing: 3,
          mainAxisSpacing: 3,
          children: <Widget>[
            BotonCandidato(context, "Personerito", Colors.blue[300], 'assets/images/MatiasSabogalRodriguez.jpg', "Matías Sabogal Rodríguez", "1"),
            BotonCandidato(context, "Personerito", Colors.green[300], 'assets/images/LorenSofiaAvilaMarroquin.jpg', "Loren Sofía Avila Marroquín", "2"),
            BotonCandidato(context, "Personerito", Colors.red[300], 'assets/images/EstebandeJesusMorenoMoreno.jpg', "Esteban de Jesús Moreno Moreno", "3"),
            BotonCandidato(context, "Personerito", Colors.white70, 'assets/images/PersoneritoBlanco.jpg', "Voto en Blanco", "B"),
          ]),
    );
  }
}
