import 'package:flutter/material.dart';
import 'botonCandidato.dart';
import 'globales.dart';

class representante extends StatelessWidget{
  const representante({super.key});

  @override
  Widget build(BuildContext context){

    // aqui debe ir la creacion de la lista

    return Scaffold(
      appBar: AppBar(
        title: const Text("REPRESENTANTE DE CURSO"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.count(
            crossAxisCount: 2,      //Cuántos elementos tendra de forma horizontal máximo acomada 3 por fila
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            children:
              crearLista(context),
        ),
      ),
    );
  }

  // Crea la lista de candidatos y retorna los botones para ser presentados en pantalla

  List<Widget> crearLista(BuildContext context) {
    List<Widget> listaRepresentantes = [];

    print("Lista curso -> $curso");
    switch (curso) {
      case "301":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/LorenSofiaAvilaMarroquin301.jpeg', "Loren Sofía Avila Marroquín", "3011"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/MariangelPinillaManco301.jpeg', "Mariangel Pinilla Manco", "3012"));
      case "302":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/HelenSofiaCortesAlberto302.jpeg', "Helen Sofía Cortés Alberto", "3021"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/SamuelSantiagoRaveloLara302.jpeg', "Samuel Santiago Ravelo Lara", "3022"));
      case "303":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/MichaelDanielVillazonGonzalez303.jpeg', "Michael Daniel Villazón González", "3031"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/ValeryShanaydaVargasMunoz303.jpeg', "Valery Shanayda Vargas Muñoz", "3032"));
      case "304":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/DavidSantiagoAlfonsoLopez304.jpeg', "David Santiago Alfonso López", "3041"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/EilynMarianaLugoCruz304.jpeg', "Eilyn Mariana Lugo Cruz", "3042"));
      case "305":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/MarcosMoisesSolarteMarquez305.jpeg', "Marcos Moisés Solarte Márquez", "3051"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/ValeryValentinaCubillanOrellana305.jpeg', "Valery Valentina Cubillan Orellana", "3052"));
      case "306":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/VictoriaAnabelhaBarriosMoreno306.jpeg', "Victoria Anabelha Barrios Moreno", "3061"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/ZoeSalomeDelgadilloArcila306.jpeg', "Zoe Salomé Delgadillo Arcila", "3062"));
      case "401":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/SalomeHuertasDiaz401.jpeg', "Salome Huertas Díaz", "4011"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/WendyLorenaMoyanoRodriguez401.jpeg', "Wendy Lorena Moyano Rodríguez", "4012"));
      case "402":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/IsabellaRicaurteSanchez402.jpeg', "Isabella Ricaurte Sánchez", "4021"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/YulianAmayaTarazona402.jpeg', "Yulian Amaya Tarazona", "4022"));
      case "403":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/DylanMercadoVasquez403.jpeg', "Dylan Mercado Vásquez", "4031"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/JoellAndreyMosqueraReyes403.jpeg', "Joell Andrey Mosquera Reyes", "4032"));
      case "404":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/MartinSotoPenaloza404.jpeg', "Martin Soto Peñaloza", "4041"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/ThiagoIsaiasTovarTorres404.jpeg', "Thiago Isaías Tovar Torres", "4042"));
      case "405":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/AlexandraPayaresRuiz405.jpeg', "Alexandra Payares Ruiz", "4051"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/SantiagoDavidMonteroMarin405.jpeg', "Santiago David Montero Marín", "4052"));
      case "406":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/BrayanStivenMartinezVillamizar406.jpeg', "Brayan Stiven Martínez Villamizar", "4061"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/ManuelEduardoPerez406.jpeg', "Manuel Eduardo Pérez", "4062"));
      case "501":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/EduardoJoseChirinosMolina.jpeg', "Eduardo José Chirinos Molina", "5011"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/GabrielaMartinezSuarez_501.jpeg', "Gabriela Martinez Suárez", "5012"));
      case "502":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/FabianAlejandroLuzardoMarquez502.jpeg', "Fabian Alejandro Luzardo Márquez", "5021"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/AndresDavidPardoBermeo502.jpeg', "Andrés David Pardo Bermeo", "5022"));
      case "503":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/EmanuelRojasRoa503.jpeg', "Emanuel Rojas Roa", "5031"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/LizethDanielaBarraganCano503.jpeg', "Lizeth Daniela Barragán Cano", "5032"));
      case "504":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/TalianaPenaArrieta504.jpeg', "Taliana Peña Arrieta", "5041"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/SaraVioletaBeltranSaiz504.jpeg', "Sara Violeta Beltrán Saiz", "5042"));
      case "505":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/EilynMarianaCristanchoGonzalez505.jpeg', "Eilyn Mariana Cristancho González ", "5051"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/VictoriaIsabellaMonteroMarin505.jpeg', "Victoria Isabella Montero Marin", "5052"));
      case "506":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/AllisonSamanthaArangurenVelasquez506.jpeg', "Allison Samantha Aranguren Velásquez", "5061"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/OswaldoJoseGavidiaVasquez506.jpeg', "Oswaldo José Gavidia Vasquez", "5062"));
      case "601":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/SaraSofiaOrtizSanchez601.jpeg', "Sara Sofia Ortiz Sánchez", "6011"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/DilierNunezPena601.jpeg', "Dilier Nuñez Peña", "6012"));
      case "602":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/HannaSofiaZambranoRodriguez602.jpeg', "Hanna Sofia Zambrano Rodriguez", "6021"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/DavidAlejandroValleRamirez602.jpeg', "David Alejandro Valle Ramirez", "6022"));
      case "603":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/SharidDanielaLoaizaGuina603.jpeg', "Sharid Daniela Loaiza Guina", "6031"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/OscarFabianBenavidesMurcia603.jpeg', "Oscar Fabian Benavides Murcia", "6032"));
      case "604":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/SofiaRamirezMarin604.jpeg', "Sofía Ramírez Marín", "6041"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/IsabellaFlorez604.jpeg', "Isabella Flórez", "6042"));
      case "605":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/AndersonPirachican605.jpeg', "Anderson Pirachican", "6051"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/AnaMariaRodriguezSanchez605.jpeg', "Ana Maria Rodriguez Sánchez", "6052"));
      case "606":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/JazminGabrielaCifuentesRodriguez606.jpeg', "Jazmin Gabriela Cifuentes Rodriguez", "6061"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/AndresFelipeMaestreHerrera606.jpeg', "Andrés Felipe Maestre Herrera", "6062"));
      case "607":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/MarianaPalominoMorales607.jpeg', "Mariana Palomino Morales", "6071"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/JuanPabloTellezSalgado607.jpeg', "Juan Pablo Téllez Salgado", "6072"));
      case "608":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/KevinMateoGonzalezDiaz608.jpeg', "Kevin Mateo Gonzalez Diaz", "6081"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/JuanDavidRiveraGomez608.jpeg', "Juan David Rivera Gómez", "6082"));
      case "701":
        if (jornada == "T") {
          listaRepresentantes.add(BotonCandidato(
              context, "Representante curso $curso", Colors.cyan,
              'assets/images/NicolEstefanyMaderaAguilar701.jpeg',
              "Nicol Estefany Madera Aguilar", "7011"));
          listaRepresentantes.add(BotonCandidato(
              context, "Representante curso $curso", Colors.deepOrangeAccent,
              'assets/images/IsaacTopumo701.jpeg',
              "Isaac Topumo", "7012"));
        } else {
          listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.white, 'assets/images/finalizar.jpeg', "Finalizar Votación", "0"));
        }
      case "702":
        if (jornada == "T") {
          listaRepresentantes.add(BotonCandidato(
              context, "Representante curso $curso", Colors.cyan,
              'assets/images/MartinEliasNunezPena702.jpeg',
              "Martin Elias Nuñez Peña", "7021"));
          listaRepresentantes.add(BotonCandidato(
              context, "Representante curso $curso", Colors.deepOrangeAccent,
              'assets/images/LauraMarianaTrivinoAcevedo702.jpeg',
              "Laura Mariana Triviño Acevedo", "7022"));
        } else {
          listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.white, 'assets/images/finalizar.jpeg', "Finalizar Votación", "0"));
        }
      case "703":
        if (jornada == "T") {
          listaRepresentantes.add(BotonCandidato(
              context, "Representante curso $curso", Colors.cyan,
              'assets/images/SalomeOrtegon703.jpeg',
              "Salomé Ortegon", "7031"));
          listaRepresentantes.add(BotonCandidato(
              context, "Representante curso $curso", Colors.deepOrangeAccent,
              'assets/images/AleskaSanchez703.jpeg',
              "Aleska Sánchez", "7032"));
        } else {
          listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.white, 'assets/images/finalizar.jpeg', "Finalizar Votación", "0"));
        }
/*      case "704":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/704_Brandon_Bolanos_3910.jpg', "Brandon Bolaños", "7041"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/704_Mateo_Parra_3911.jpg', "Mateo Parra", "7042"));
      case "705":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/705_Ana_Maria_Castro_3976.jpg', "Ana María Castro", "7051"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/705_Samuel_Felipe_Barrios_3974.jpg', "Samuel Felipe Barrios", "7052"));
      case "706":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/706_Braulio_Silva_3912.jpg', "Braulio Silva", "7061"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/706_Laura_Carvajal_3914.jpg', "Laura Carvajal", "7062"));
      case "707":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/707_Katherin_Pinto_3997.jpg', "Katherin Pinto", "7071"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/707_Santiago_Lozano_4000.jpg', "Santiago Lozano", "7072"));
      case "708":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/708_Faviora_Stenstrom_3917.jpg', "Faviora Stenstrom", "7081"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/708_Valerie_Gonzales_3915.jpg', "Valerie Gonzáles", "7082"));
      case "801":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/801_Elizabeth_Pedroza_3959.jpg', "Elizabeth Pedroza", "8011"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/801_Maria_Paula_Palacios_3958.jpg', "María Paula Palacios", "8022"));
*/      case "802":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/GabrielaCastilloPaez802.jpeg', "Gabriela Castillo Paez", "8021"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/MariaValentinaVillamilForero802.jpeg', "María Valentina Villamil Forero", "8022"));
      case "803":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/DanielEnriqueManjarrezManjarrez803.jpeg', "Daniel Enrique Manjarrez Manjarrez", "8031"));
        //listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/803_Daniel_Ortiz_3919.jpg', "Daniel Ortiz", "8032"));
      case "804":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/SantiagoLozanoPadilla804.jpeg', "Santiago Lozano Padilla", "8041"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/AlbelySofiaCoaBarrios804.jpeg', "Albely Sofia Coa Barrios", "8042"));
      case "805":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/ValerieCamilaBecerraMendez805.jpeg', "Valerie Camila Becerra Mendez", "8051"));
        //listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/805_Scarlette_Meza_3924.jpg', "Scarlette Meza", "8052"));
      case "806":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/EdisonMateoParra806.jpeg.jpg', "Edison Mateo Parra", "8061"));
        //listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/806_Laura_Sofia_Ospina_Manrique_3995.jpg', "Laura Sofía Ospina Manrique", "8062"));
/*      case "807":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/807_Rosa_Ahumada_3931.jpg', "Rosa Ahumada", "8071"));
       listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/807_Xiomara_Valderrama_3928.jpg', "Xiomara Valderrama", "8072"));
*/      case "808":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/MariaJoseGilPena808.jpeg', "María José Gil Peña", "8081"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/LauraVictoriaCarvajalAguirre808.jpeg', "Laura Victoria Carvajal Aguirre", "8082"));
      case "901":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/DayanaMichellJimenezLopez901.png', "Dayana Michell Jiménez López", "9011"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/ElisabetPedrazaFranco901.png', "Elisabet Pedraza Franco", "9012"));
      case "902":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/JohanStivenSuarezFranco902.png', "Johan Stiven Suárez Franco", "9021"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/JohanSantiagoMatizGiron902.png', "Johan Santiago Matiz Girón", "9022"));
      case "903":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/SaraCatalinaHernandezCristancho903.png', "Sara Catalina Hernández Cristancho", "9031"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/AbrahamAlfonsoChinchillaQuintero903.png', "Abraham Alfonso Chinchilla Quintero", "9032"));
      case "904":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/ValerieNicollBenitezContreras904.png', "Valerie Nicoll Benitez Contreras", "9041"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/JulianFelipeSarmientoSerrano904.png', "Julián Felipe Sarmiento Serrano", "9042"));
/*      case "905":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/905_Carolina_Garcia_Durante_3949.jpg', "Carolina García Durante", "9051"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/905_Pedro_Estiven_Pinto_Linares_3947.jpg', "Pedro Estiven Pinto Linares", "9052"));
*/      case "906":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/AndridMichellJaimesCorrea906.png', "Andrid Michell Jaimes Correa", "9061"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/JorgeAndresMartinezYepes906.png', "Jorge Andrés Martínez Yepes", "9062"));
/*      case "907":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/907_Diego_Andres_Palomino_3957.jpg', "Diego Andrés Palomino", "9071"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/907_Juliana_Robayo_3956.jpg', "Juliana Robayo", "9072"));
      case "1001":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/1001_Santiago_Bohorquez_3963.jpg', "Santiago Bohorquez", "10011"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/1001_Santiago_Laguilao_3961.jpg', "Santiago Laguilao", "10012"));
      case "1002":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/1002_Karol_Michelle_Rojas_3966.jpg', "Karol Michelle Rojas", "10021"));
      case "1003":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/1003_Juliana_Ramirez_3967.jpg', "Juliana Ramírez", "10031"));
      case "1004":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/1004_Esteban_Mora_3968.jpg', "Esteban Mora", "10041"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/1004_Leidy_Pena_3969.jpg', "Leidy Peña", "10042"));
      case "1005":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/1005_Jhosmer_Alvarez_3970.jpg', "Jhosmer Alvarez", "10051"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/1005_Xiomara_Ayelen_3971.jpg', "Xiomara Ayelen", "10052"));
      case "1101":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/1101_Sara_Vergara_3978.jpg', "Sara Vergara", "11011"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/1101_Sharonl_Juliana_Palomino_3981.jpg', "Sharonl Juliana Palomino", "11012"));
      case "1102":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/1102_Camilo_Corrales_3991.jpg', "Camilo Corrales", "11021"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/1102_Sofia_Castro_3989.jpg', "Sofía Castro", "11022"));
      case "1103":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/1103_Diego_Velasco_3985.jpg', "Diego Velasco", "11031"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/1103_Santiago_Ortega_3984.jpg', "Santiago Ortega", "11032"));
      case "1104":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/1104_Aramis_Acurero_3987.jpg', "Aramis Acurero", "11041"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/1104_Santiago_Quiroz_3986.jpg', "Santiago Quiroz", "11042"));
      case "1105":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/1105_Isabel_Cristina_Zubieta_Pavon_3982.jpg', "Isabel Cristina Zubieta Pavón", "11051"));
*/      default:
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.white, 'assets/images/finalizar.jpeg', "Finalizar Votación", "0"));
    }

    return listaRepresentantes;
  }
}
