import 'package:flutter/material.dart';
import 'botonCandidato.dart';
import 'globales.dart';

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

    if (jornada == "M") {
      return Padding(
        padding: EdgeInsets.all(10),
        child: GridView.count(
            crossAxisCount: 3,
            //Cuántos elementos tendra de forma horizontal máximo acomoda 3 por fila
            crossAxisSpacing: 3,
            mainAxisSpacing: 3,
            children: <Widget>[
              BotonCandidato(context, "Personerito", Colors.blue[300],
                  'assets/images/IanSamuelGomezCruz.jpeg',
                  "Ian Samuel Gómez Cruz", "1"),
              BotonCandidato(context, "Personerito", Colors.green[300],
                  'assets/images/TaniaMichelleGutierrezDaza.jpeg',
                  "Tania Michelle Gutierrez Daza", "2"),
              BotonCandidato(context, "Personerito", Colors.white70,
                  'assets/images/PersoneritoBlanco.jpg', "Voto en Blanco",
                  "B"),
            ]),
      );
    } else {
      return Padding(
        padding: EdgeInsets.all(10),
        child: GridView.count(
            crossAxisCount: 3,
            //Cuántos elementos tendra de forma horizontal máximo acomoda 3 por fila
            crossAxisSpacing: 3,
            mainAxisSpacing: 3,
            children: <Widget>[
              BotonCandidato(context, "Personerito", Colors.red,
                  'assets/images/ArantzaCrisbelNacurenaTamayo.jpeg',
                  "Arantza Crisbel Nacureña Tamayo", "1"),
              BotonCandidato(context, "Personerito", Colors.green,
                  'assets/images/SaraValentinaBeltranAmaya.jpeg',
                  "Sara Valentina Beltrán Amaya", "2"),
              BotonCandidato(context, "Personerito", Colors.white70,
                  'assets/images/PersoneritoBlanco.jpg', "Voto en Blanco",
                  "B"),
            ]),
      );
    }
  }
}
