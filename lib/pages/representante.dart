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
        centerTitle: true,
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
        if (jornada == "M") {
          listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.white, 'assets/images/SaibethMilagrosCabralesGarcia701M.jpg', "Saibeth Milagros Cabrales García", "7011"));
          listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/FrankCastroLora701M.jpg', "Frank Castro Lora", "7012"));
        } else {
          listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan,'assets/images/NicolEstefanyMaderaAguilar701.jpeg',"Nicol Estefany Madera Aguilar", "7013"));
          listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent,'assets/images/IsaacTopumo701.jpeg',"Isaac Topumo", "7014"));
        }
      case "702":
        if (jornada == "M") {
          listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.white, 'assets/images/SaraSofiaGalvisMerizalde702M.jpg', "Sara Sofía Galvis Merizalde ", "7021"));
          listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/EiderSantiagoGuzmanWalteros702M.jpg', "Eider Santiago Guzmán Walteros", "7022"));
        } else {
          listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan,'assets/images/MartinEliasNunezPena702.jpeg',"Martín Elías Núñez Peña", "7023"));
          listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent,'assets/images/LauraMarianaTrivinoAcevedo702.jpeg',"Laura Mariana Triviño Acevedo", "7024"));
        }
      case "703":
        if (jornada == "M") {
          listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.white, 'assets/images/NorjelyValentinaAraujoDavidson703M.jpg', "Norjely Valentina Araujo Davidson", "7031"));
          listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/JuanKamiloMontenegroBolano703M.jpg', "Juan Kamilo Montenegro Bolaño", "7032"));
        } else {
          listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan,'assets/images/SalomeOrtegon703.jpeg',"Salomé Ortegon", "7033"));
          listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent,'assets/images/AleskaSanchez703.jpeg',"Aleska Sánchez", "7034"));
        }
      case "704":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/SammySofiaMatomaBrinez704M.jpg', "Sammy Sofía Matoma Briñez ", "7041"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/JulioCesarTheranNieto704M.jpg', "Julio César Theran Nieto", "7042"));
      case "705":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/LauraValentinaRengifoHoyer705M.jpg', "Laura Valentina Rengifo Hoyer", "7051"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/ElisaMariaOrtizArriola705M.jpg', "Elisa María Ortiz Arriola", "7052"));
/*      case "706":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/706_Braulio_Silva_3912.jpg', "Braulio Silva", "7061"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/706_Laura_Carvajal_3914.jpg', "Laura Carvajal", "7062"));
      case "707":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/707_Katherin_Pinto_3997.jpg', "Katherin Pinto", "7071"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/707_Santiago_Lozano_4000.jpg', "Santiago Lozano", "7072"));
      case "708":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/708_Faviora_Stenstrom_3917.jpg', "Faviora Stenstrom", "7081"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/708_Valerie_Gonzales_3915.jpg', "Valerie Gonzáles", "7082"));
*/
      case "801":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/SergioAndresManjarresGutierrez801.jpeg', "Sergio Andrés Manjarrés Gutiérrez", "8011"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/AndresFelipeOlivaresGulfo801.jpeg', "Andrés Felipe Olivares Gulfo ", "8022"));
      case "802":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/GabrielaCastilloPaez802.jpeg', "Gabriela Castillo Paez", "8021"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/MariaValentinaVillamilForero802.jpeg', "María Valentina Villamil Forero", "8022"));
      case "803":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/DanielEnriqueManjarrezManjarrez803.jpeg', "Daniel Enrique Manjarrez Manjarrez", "8031"));
        //listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/803_Daniel_Ortiz_3919.jpg', "Daniel Ortiz", "8032"));
      case "804":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/SantiagoLozanoPadilla804.jpeg', "Santiago Lozano Padilla", "8041"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/AlbelySofiaCoaBarrios804.jpeg', "Albely Sofía Coa Barrios", "8042"));
      case "805":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/ValerieCamilaBecerraMendez805.jpeg', "Valerie Camila Becerra Méndez", "8051"));
        //listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/805_Scarlette_Meza_3924.jpg', "Scarlette Meza", "8052"));
      case "806":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/EdisonMateoParra806.jpeg', "Edison Mateo Parra", "8061"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/JeanCarlosVasquezMolina806.jpeg', "Jean Carlos Vásquez Molina", "8062"));
      case "807":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/SamuelEstebanMartinezBonilla807.jpeg', "Samuel Esteban Martínez Bonilla", "8071"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/BraulioDavidSilva807.jpeg', "Braulio David Silva", "8072"));
      case "808":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/MariaJoseGilPena808.jpeg', "Mariajosé Gil Peña", "8081"));
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
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/ValerieNicollBenitezContreras904.png', "Valerie Nicoll Benítez Contreras", "9041"));
//        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/JulianFelipeSarmientoSerrano904.png', "Julián Felipe Sarmiento Serrano", "9042"));
      case "905":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/StivenClementeMendivilRivera905M.jpg', "Stiven Clemente Mendivil Rivera", "9051"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/IsabellaZunigaMendivelso905M.jpg', "Isabella Zuñiga Mendivelso", "9052"));
      case "906":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/AndridMichellJaimesCorrea906.png', "Andrid Michell Jaimes Correa", "9061"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/JorgeAndresMartinezYepes906.png', "Jorge Andrés Martínez Yepes", "9062"));
/*      case "907":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/907_Diego_Andres_Palomino_3957.jpg', "Diego Andrés Palomino", "9071"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/907_Juliana_Robayo_3956.jpg', "Juliana Robayo", "9072"));
*/      case "1001":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/DeiverEstivenBueno1001.png', "Deiver Estiven Bueno", "10011"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/JulianaIsabelaMonroyBocanegra1001.png', "Juliana Isabela Monroy Bocanegra", "10012"));
      case "1002":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/JuanDavidNunezBermudez1002.png', "Juan David Núñez Bermúdez", "10021"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/LuisaFernandaMartinezQuiroga1002.png', "Luisa Fernanda Martínez Quiroga", "10022"));
      case "1003":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/VictoriaNeisabethMendozaClaro1003.png', "Victoria Neisabeth Mendoza Claro", "10031"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/SairenjiGabrielaPerdomoFuentes1003.png', "Sairenji Gabriela Perdomo Fuentes", "10032"));
      case "1004":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/MelanyPaolaCarlodelaRosa1004.png', "Melany Paola Caro de la Rosa", "10041"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/LauraFernandaVacaCabrera1004.png', "Laura Fernanda Vaca Cabrera", "10042"));
      case "1005":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/FabianSantiagoMateus1005.png', "Fabián Santiago Mateus", "10051"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/AngieVanesaMurilloLara1005.png', "Angie Vanesa Murillo Lara", "10052"));
      case "1101":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/JoseManuelAgamezPacheco1101.png', "José Manuel Agámez Pacheco", "11011"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/NataliaRamosGonzalez1101.png', "Natalia Ramos González", "11012"));
      case "1102":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/MariaJoseBarrazaSuarez1102.jpg', "María José Barraza Suárez", "11021"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/JoelValenzuelaGelvez1102.png', "Joel Valenzuela Gélvez", "11022"));
      case "1103":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/MariaValentinaDavilaRodelo1103.jpeg', "María Valentina Dávila Rodelo", "11031"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/LuisaFernandaSantaEspinosa1103.jpeg', "Luisa Fernanda Santa Espinosa", "11032"));
      case "1104":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/SharolMichellAcostaAcosta1104.png', "Sharol Michell Acosta Acosta", "11041"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/ElkinRodriguezMiranda1104.png', "Elkin Rodríguez Miranda", "11042"));
      case "1105":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/SergioAndresGomez1105.jpg', "Sergio Andrés Gómez", "11051"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/MariaJoseGomezCarreno1105.png', "María José Gómez Carreño", "11052"));
      default:
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.white, 'assets/images/finalizar.jpeg', "Finalizar Votación", "0"));
    }

    return listaRepresentantes;
  }
}
