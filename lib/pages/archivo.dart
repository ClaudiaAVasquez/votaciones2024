import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:votaciones2024/pages/globales.dart';

//Variable de la ubicación

Future<String> get _localPath async {
//  final directory = await getApplicationDocumentsDirectory();
  final directory = await getDownloadsDirectory();

  return directory!.path;
}

//Referencia a la ubicación completa del archivo
//Variable del archivo
Future<File> nombreArchivo(String numTablet) async {

  String prefijo="";

  if (kIsWeb) {
    prefijo = "c:\\archivos\\";
  } else {
    if (Platform.isAndroid) {
      prefijo = "${await _localPath}/";
    }
  }
  final nombre = "$prefijo$curso-$numTablet.csv";

  print("Nombre archivo $nombre");

  return File(nombre);
}

int existe(File nombre) {
  print("verificar si existe el archivo ${nombre.path}");
  if (nombre.exists() == true) {
    nombre.readAsString().then((String contents) {
      print("contents -> $contents");
    });
  } else {
    try {
      nombre.create();
      print("El archivo fue creado $nombre");
    } catch (error) {
      print(error);
      return 0;
    }
  }
  return 1;
}

String guardarvoto(File archivo, String voto) {

  var fecha = DateTime.now().toLocal();

  String codigo = "${voto.replaceAll(",", "")}${fecha.millisecond.toString()}${fecha.microsecond.toString()}";

  if (existe(archivo) == 1) {
    // Generar el codigo del voto y mostrarlo en pantalla y agregarlo al registro

    var registro = "$curso,$jornada,${fecha.year.toString()}-${fecha.month.toString()}-${fecha.day.toString()},${fecha.hour.toString()}:${fecha.minute.toString()}:${fecha.second.toString()},$voto,$codigo\n";
    archivo.writeAsString(registro, mode: FileMode.append);

    return codigo;
  }

  return "" ;
}
