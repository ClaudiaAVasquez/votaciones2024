import 'dart:io';
import 'dart:io' show Platform;

import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';

//Variable de la ubicación
String get _localPath {
  final Directory directorio = getApplicationDocumentsDirectory() as Directory;
  print("Directorio $directorio.path");
  return directorio.path;
}

//Referencia a la ubicación completa del archivo
//Variable del archivo
File nombrearchivo(String curso, String numtablet) {

  String prefijo = "";

  if (kIsWeb) {
    prefijo = "c:\\archivos\\";
  } else {
    if (Platform.isAndroid) {
      //final nombre = Directory.systemTemp.path + '/' + curso + numtablet + '.csv';
      prefijo = "/storage/emulated/0/Documents/";
      //final nombre = _localPath + curso + numtablet;
    }
  }
  final nombre = prefijo + curso + numtablet + '.csv';

  print("Nombre archivo $nombre");
  return File(nombre);
}

int existe(File nombre) {
  if (nombre.exists() == true) {
    print("Leyendo el archivo $nombre");
    nombre.readAsString().then((String contents) {
      print(contents);
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

guardarvoto(File archivo, String person, String contra, String cabil) {
  print("Guardarvoto");
  if (existe(archivo) == 1) {
    var registro = person + "," + contra + "," + cabil + "\n";
    print(registro);
    archivo.writeAsString(registro, mode: FileMode.append);
  }
}
