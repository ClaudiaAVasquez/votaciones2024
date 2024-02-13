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

    switch (curso) {
      case "301":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/301_Isaias_Will_Leal_Puerta.jpg', "Isaías Will Leal Puerta", "3011"));
      case "402":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/402_Luna_Cortez_Ruz.jpg', "Luna Cortez Ruz", "4021"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/402_Samuel_Berrio_Barahona.jpg', "Samuel Berrío Barahona", "4022"));
      case "405":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/405_Dailan_Santiago_Suarez_Gavidia.jpg', "Dailan Santiago Suárez Gavidia", "4051"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/405_Danna_Isabela_Duran_Perez.jpg', "Danna Isabela Durán Pérez", "4052"));
      case "406":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/406_Santiago_Camilo_Perez_Camargo.jpg', "Santiago Camilo Pérez Camargo", "4061"));
      case "502":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/502_Sofia_Camila_Perez_Camargo.jpg', "Sofía Camila Pérez Camargo", "5021"));
      case "503":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/503_Duvan_Andres_Palencia_Alean.jpg', "Duván Andrés Palencia Alean", "5031"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/503_Hector_David_Soto_Trujillo.jpg', "Hector David Soto Trujillo", "5032"));
      case "504":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/504_Miguel_Angel_Marroquin_Cruz.jpg', "Miguel Angel Marroquín Cruz", "5041"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/504_Sofia_Ramirez_Marin.jpg', "Sofía Ramírez Marín", "5042"));
      case "505":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/505_Iviandely_Sofia_Garcia_Collins.jpg', "Iviandely Sofía García Collins", "5051"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/505_Joel_Alejandro_Albarracin_Hermosa.jpg', "Joel Alejandro Albarracín Hermosa", "5052"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/505_Johan_Rubio_Rodriguez.jpg', "Johan Rubio Rodríguez", "5052"));
      case "506":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/506_Laura_Sofia_Vera_Padilla.jpg', "Laura Sofía Vera Padilla", "5061"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/506_Nicol_Taliana_Carvajal_Ayure.jpg', "Nicol Taliana Carvajal Ayure", "5062"));
      case "704":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/704_Brandon_Bolanos_3910.jpg', "Brandon Bolaños", "3910"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/704_Mateo_Parra_3911.jpg', "Mateo Parra", "3911"));
      case "705":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/705_Ana_Maria_Castro_3976.jpg', "Ana María Castro", "3976"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/705_Samuel_Felipe_Barrios_3974.jpg', "Samuel Felipe Barrios", "3974"));
      case "706":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/706_Braulio_Silva_3912.jpg', "Braulio Silva", "3912"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/706_Laura_Carvajal_3914.jpg', "Laura Carvajal", "3914"));
      case "707":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/707_Katherin_Pinto_3997.jpg', "Katherin Pinto", "3997"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/707_Santiago_Lozano_4000.jpg', "Santiago Lozano", "4000"));
      case "708":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/708_Faviora_Stenstrom_3917.jpg', "Faviora Stenstrom", "3917"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/708_Valerie_Gonzales_3915.jpg', "Valerie Gonzáles", "3915"));
      case "801":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/801_Elizabeth_Pedroza_3959.jpg', "Elizabeth Pedroza", "3959"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/801_Maria_Paula_Palacios_3958.jpg', "María Paula Palacios", "3958"));
      case "802":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/802_Juan_Jose_Rosero_3918.jpg', "Juan José Rosero", "3918"));
      case "803":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/803_Angelina_Meza_3920.jpg', "Angelina Meza", "3920"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/803_Daniel_Ortiz_3919.jpg', "Daniel Ortiz", "3919"));
      case "804":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/804_Jose_Mantilla_3922.jpg', "José Mantilla", "3922"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/804_Valerie_Benitez_3921.jpg', "Valerie Benítez", "3921"));
      case "805":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/805_Luis_Miguel_Reyes_3923.jpg', "Luis Miguel Reyes", "3923"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/805_Scarlette_Meza_3924.jpg', "Scarlette Meza", "3924"));
      case "806":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/806_Ana_Maria_Toledo_Cuellar_3994.jpg', "Ana María Toledo Cuellar", "3994"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/806_Laura_Sofia_Ospina_Manrique_3995.jpg', "Laura Sofía Ospina Manrique", "3995"));
      case "807":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/807_Rosa_Ahumada_3931.jpg', "Rosa Ahumada", "3931"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/807_Xiomara_Valderrama_3928.jpg', "Xiomara Valderrama", "3928"));
      case "808":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/808_Maria_Camila_Mier_3925.jpg', "María Camila Mier", "3925"));
      case "901":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/901_Juliana_Monroy_3933.jpg', "Juliana Monroy", "3933"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/901_Karol_Negrete_3935.jpg', "Karol Negrete", "3935"));
      case "902":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/902_Juan_David_Nunez_3936.jpg', "Juan David Núñez", "3936"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/902_Maria_Fernanda_Forero_3938.jpg', "María Fernanda Forero", "3938"));
      case "903":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/903_Lina_Martinez_3941.jpg', "Lina Martínez", "3941"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/903_Victoria_Mendoza_3940.jpg', "Victoria Mendoza", "3940"));
      case "904":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/904_Luisa_Martinez_3944.jpg', "Luisa Martínez", "3944"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/904_Raquel_Andrade_3946.jpg', "Raquel Andrade", "3946"));
      case "905":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/905_Carolina_Garcia_Durante_3949.jpg', "Carolina García Durante", "3949"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/905_Pedro_Estiven_Pinto_Linares_3947.jpg', "Pedro Estiven Pinto Linares", "3947"));
      case "906":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/906_Fabian_Mateus_3953.jpg', "Fabián Mateus", "3953"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/906_Shiara_Arevalo_Patino_3952.jpg', "Shiara Arévalo Patiño", "3952"));
      case "907":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/907_Diego_Andres_Palomino_3957.jpg', "Diego Andrés Palomino", "3957"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/907_Juliana_Robayo_3956.jpg', "Juliana Robayo", "3956"));
      case "1001":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/1001_Santiago_Bohorquez_3963.jpg', "Santiago Bohorquez", "3963"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/1001_Santiago_Laguilao_3961.jpg', "Santiago Laguilao", "3961"));
      case "1002":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/1002_Karol_Michelle_Rojas_3966.jpg', "Karol Michelle Rojas", "3966"));
      case "1003":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/1003_Juliana_Ramirez_3967.jpg', "Juliana Ramírez", "3967"));
      case "1004":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/1004_Esteban_Mora_3968.jpg', "Esteban Mora", "3968"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/1004_Leidy_Pena_3969.jpg', "Leidy Peña", "3969"));
      case "1005":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/1005_Jhosmer_Alvarez_3970.jpg', "Jhosmer Alvarez", "3970"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/1005_Xiomara_Ayelen_3971.jpg', "Xiomara Ayelen", "3971"));
      case "1101":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/1101_Sara_Vergara_3978.jpg', "Sara Vergara", "3978"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/1101_Sharonl_Juliana_Palomino_3981.jpg', "Sharonl Juliana Palomino", "3981"));
      case "1102":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/1102_Camilo_Corrales_3991.jpg', "Camilo Corrales", "3991"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/1102_Sofia_Castro_3989.jpg', "Sofía Castro", "3989"));
      case "1103":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/1103_Diego_Velasco_3985.jpg', "Diego Velasco", "3985"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/1103_Santiago_Ortega_3984.jpg', "Santiago Ortega", "3984"));
      case "1104":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/1104_Aramis_Acurero_3987.jpg', "Aramis Acurero", "3987"));
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.deepOrangeAccent, 'assets/images/1104_Santiago_Quiroz_3986.jpg', "Santiago Quiroz", "3986"));
      case "1105":
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.cyan, 'assets/images/1105_Isabel_Cristina_Zubieta_Pavon_3982.jpg', "Isabel Cristina Zubieta Pavón", "3982"));
      default:
        listaRepresentantes.add(BotonCandidato(context, "Representante curso $curso", Colors.white, 'assets/images/finalizar.jpeg', "Finalizar Votación", "0"));
    }

    return listaRepresentantes;
  }
}
