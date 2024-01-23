//Listas
//https://www.youtube.com/watch?v=uhnPQUDbfoo

//import 'dart:js';

import 'package:flutter/material.dart';
import 'autenticacionjardin.dart';


final List<cursosprejardin> _cursosprejardin = [
  cursosprejardin("PreJardin01"),
  cursosprejardin("PreJardin02"),
  cursosprejardin("PreJardin03"),
];

final List<cursosjardin> _cursosjardin = [
  cursosjardin("Jardin01"),
  cursosjardin("Jardin02"),
  cursosjardin("Jardin03"),
  cursosjardin("Jardin04"),
  cursosjardin("Jardin05"),
  cursosjardin("Jardin06"),
];

final List<cursostransicion> _cursostransicion = [
  cursostransicion("Transición01"),
  cursostransicion("Transición02"),
  cursostransicion("Transición03"),
  cursostransicion("Transición04"),
  cursostransicion("Transición05"),
  cursostransicion("Transición06"),
  cursostransicion("Transición07"),
  cursostransicion("Transición08"),
];

final List<cursosprimero> _cursosprimero = [
  cursosprimero("101"),
  cursosprimero("102"),
  cursosprimero("103"),
  cursosprimero("104"),
  cursosprimero("105"),
  cursosprimero("106"),
  cursosprimero("107"),
  cursosprimero("108"),
  cursosprimero("109"),
  cursosprimero("110"),
];

final List<cursossegundo> _cursossegundo = [
  cursossegundo("201"),
  cursossegundo("202"),
  cursossegundo("203"),
  cursossegundo("204"),
  cursossegundo("205"),
  cursossegundo("206"),
  cursossegundo("207"),
  cursossegundo("208"),
  cursossegundo("209"),
];

final List<cursostercero> _cursostercero = [
  cursostercero("301"),
  cursostercero("302"),
  cursostercero("303"),
  cursostercero("304"),
  cursostercero("305"),
  cursostercero("306"),
];

final List<cursoscuarto> _cursoscuarto = [
  cursoscuarto("401"),
  cursoscuarto("402"),
  cursoscuarto("403"),
  cursoscuarto("404"),
  cursoscuarto("405"),
  cursoscuarto("406"),
];

final List<cursosquinto> _cursosquinto = [
  cursosquinto("501"),
  cursosquinto("502"),
  cursosquinto("503"),
  cursosquinto("504"),
  cursosquinto("505"),
  cursosquinto("506"),
];

final List<cursossexto> _cursossexto = [
  cursossexto("601"),
  cursossexto("602"),
  cursossexto("603"),
  cursossexto("604"),
  cursossexto("605"),
  cursossexto("606"),
];

final List<cursosseptimo> _cursosseptimo = [
  cursosseptimo("701"),
  cursosseptimo("702"),
  cursosseptimo("703"),
  cursosseptimo("704"),
  cursosseptimo("705"),
  cursosseptimo("706"),
  cursosseptimo("707"),
];

final List<cursosoctavo> _cursosoctavo = [
  cursosoctavo("801"),
  cursosoctavo("802"),
  cursosoctavo("803"),
  cursosoctavo("804"),
  cursosoctavo("805"),
  cursosoctavo("806"),
  cursosoctavo("807"),
];

final List<cursosnoveno> _cursosnoveno = [
  cursosnoveno("901"),
  cursosnoveno("902"),
  cursosnoveno("903"),
  cursosnoveno("904"),
  cursosnoveno("905"),
  cursosnoveno("906"),
  cursosnoveno("907"),
];

final List<cursosdecimo> _cursosdecimo = [
  cursosdecimo("1001"),
  cursosdecimo("1002"),
  cursosdecimo("1003"),
  cursosdecimo("1004"),
  cursosdecimo("1005"),
  cursosdecimo("1006"),
  cursosdecimo("1007"),
];

final List<cursosonce> _cursosonce = [
  cursosonce("1101"),
  cursosonce("1102"),
  cursosonce("1103"),
  cursosonce("1104"),
  cursosonce("1105"),
  cursosonce("1106"),
  cursosonce("1107"),
];

class cursos extends StatelessWidget {
  const cursos({Key? key, required this.texto}) : super(key: key);
  final String texto;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CURSO"),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
      ),
      body: escogercurso(texto: texto),
    );
  }
}

class escogercurso extends StatefulWidget {

  const escogercurso({Key? key, required this.texto}) : super(key: key);
  final String texto;

  @override
  State<StatefulWidget> createState() {
    return escogercursoState(texto: texto);
  }
}

class escogercursoState extends State<escogercurso> {
  escogercursoState({Key? key, required this.texto});
  final String texto;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("Escoger Curso para votar"),
      ),
      body: funciongrado(texto),
    );
  }
}

funciongrado(texto) {

  if (texto == "PreJardin"){
    return ListView.builder(
        itemCount: _cursosprejardin.length,
        itemBuilder: (context, index){
          return ListTile(
            onTap: (){
              print(_cursosprejardin[index].cursopre);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> ingresar(usu:"Preescolar", pass:"prejartrans", curso: _cursosprejardin[index].cursopre)),  //Llama la pagina Sede
              );
            },
            title: Text(_cursosprejardin[index].cursopre),
            leading: CircleAvatar(
              child: Text(_cursosprejardin[index].cursopre.substring(10,11)),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          );
        });
  } else if (texto == "Jardin"){
    return ListView.builder(
        itemCount: _cursosjardin.length,
        itemBuilder: (context, index){
          return ListTile(
            onTap: (){
              print(_cursosjardin[index].cursojardin);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> ingresar(usu:"Preescolar", pass:"prejartrans", curso: _cursosjardin[index].cursojardin)), //Llama la pagina Sede                );
              );
            },
            title: Text(_cursosjardin[index].cursojardin),
            leading: CircleAvatar(
              child: Text(_cursosjardin[index].cursojardin.substring(7,8)),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          );
        });
  } else if (texto == "Transicion") {
    return ListView.builder(
        itemCount: _cursostransicion.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              print(_cursostransicion[index].cursotransicion);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> ingresar(usu:"Preescolar", pass:"prejartrans", curso: _cursostransicion[index].cursotransicion)),  //Llama la pagina Sede
              );
            },
            title: Text(_cursostransicion[index].cursotransicion),
            leading: CircleAvatar(
              child: Text(_cursostransicion[index].cursotransicion.substring(11,12)),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          );
        });
  }  else if (texto == "Primero") {
    return ListView.builder(
        itemCount: _cursosprimero.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              print(_cursosprimero[index].cursoprimero);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> ingresar(usu:"Primaria1", pass:"primerosegundo", curso: _cursosprimero[index].cursoprimero)),  //Llama la pagina Sede
              );
            },
            title: Text(_cursosprimero[index].cursoprimero),
            leading: CircleAvatar(
              child: Text(_cursosprimero[index].cursoprimero.substring(2,3)),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          );
        });
  } else if (texto == "Segundo") {
    return ListView.builder(
        itemCount: _cursossegundo.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              print(_cursossegundo[index].cursosegundo);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> ingresar(usu:"Primaria1", pass:"primerosegundo", curso: _cursossegundo[index].cursosegundo)),  //Llama la pagina Sede
              );
            },
            title: Text(_cursossegundo[index].cursosegundo),
            leading: CircleAvatar(
              child: Text(_cursossegundo[index].cursosegundo.substring(2,3)),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          );
        });
  } else if (texto == "Tercero") {
    return ListView.builder(
        itemCount: _cursostercero.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              print(_cursostercero[index].cursotercero);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> ingresar(usu:"Primaria2", pass:"tercuarquin", curso: _cursostercero[index].cursotercero)),  //Llama la pagina Sede
              );
            },
            title: Text(_cursostercero[index].cursotercero),
            leading: CircleAvatar(
              child: Text(_cursostercero[index].cursotercero.substring(2,3)),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          );
        });
  } else if (texto == "Cuarto") {
    return ListView.builder(
        itemCount: _cursoscuarto.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              print(_cursoscuarto[index].cursocuarto);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> ingresar(usu:"Primaria2", pass:"tercuarquin", curso: _cursoscuarto[index].cursocuarto)),  //Llama la pagina Sede
              );
            },
            title: Text(_cursoscuarto[index].cursocuarto),
            leading: CircleAvatar(
              child: Text(_cursoscuarto[index].cursocuarto.substring(2,3)),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          );
        });
  } else if (texto == "Quinto") {
    return ListView.builder(
        itemCount: _cursosquinto.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              print(_cursosquinto[index].cursoquinto);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> ingresar(usu:"Primaria2", pass:"tercuarquin", curso: _cursosquinto[index].cursoquinto)),  //Llama la pagina Sede
              );
            },
            title: Text(_cursosquinto[index].cursoquinto),
            leading: CircleAvatar(
              child: Text(_cursosquinto[index].cursoquinto.substring(2,3)),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          );
        });
  } else if (texto == "Sexto") {
    return ListView.builder(
        itemCount: _cursossexto.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              print(_cursossexto[index].cursosexto);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> ingresar(usu:"Secundaria", pass:"secundaria6a11", curso: _cursossexto[index].cursosexto)),  //Llama la pagina Sede
              );
            },
            title: Text(_cursossexto[index].cursosexto),
            leading: CircleAvatar(
              child: Text(_cursossexto[index].cursosexto.substring(2,3)),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          );
        });
  } else if (texto == "Septimo") {
    return ListView.builder(
        itemCount: _cursosseptimo.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              print(_cursosseptimo[index].cursoseptimo);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> ingresar(usu:"Secundaria", pass:"secundaria6a11", curso: _cursosseptimo[index].cursoseptimo)),  //Llama la pagina Sede
              );
            },
            title: Text(_cursosseptimo[index].cursoseptimo),
            leading: CircleAvatar(
              child: Text(_cursosseptimo[index].cursoseptimo.substring(2,3)),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          );
        });
  } else if (texto == "Octavo") {
    return ListView.builder(
        itemCount: _cursosoctavo.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              print(_cursosoctavo[index].cursooctavo);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> ingresar(usu:"Secundaria", pass:"secundaria6a11", curso: _cursosoctavo[index].cursooctavo)),  //Llama la pagina Sede
              );
            },
            title: Text(_cursosoctavo[index].cursooctavo),
            leading: CircleAvatar(
              child: Text(_cursosoctavo[index].cursooctavo.substring(2,3)),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          );
        });
  } else if (texto == "Noveno") {
    return ListView.builder(
        itemCount: _cursosnoveno.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              print(_cursosnoveno[index].cursonoveno);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> ingresar(usu:"Secundaria", pass:"secundaria6a11", curso: _cursosnoveno[index].cursonoveno)),  //Llama la pagina Sede
              );
            },
            title: Text(_cursosnoveno[index].cursonoveno),
            leading: CircleAvatar(
              child: Text(_cursosnoveno[index].cursonoveno.substring(2,3)),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          );
        });
  } else if (texto == "Decimo") {
    return ListView.builder(
        itemCount: _cursosdecimo.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              print(_cursosdecimo[index].cursodecimo);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> ingresar(usu:"Secundaria", pass:"secundaria6a11", curso: _cursosdecimo[index].cursodecimo)),  //Llama la pagina Sede
              );
            },
            title: Text(_cursosdecimo[index].cursodecimo),
            leading: CircleAvatar(
              child: Text(_cursosdecimo[index].cursodecimo.substring(2,3)),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          );
        });
  } else if (texto == "Once") {
    return ListView.builder(
        itemCount: _cursosonce.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              print(_cursosonce[index].cursoonce);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> ingresar(usu:"Secundaria", pass:"secundaria6a11", curso: _cursosonce[index].cursoonce)),  //Llama la pagina Sede
              );
            },
            title: Text(_cursosonce[index].cursoonce),
            leading: CircleAvatar(
              child: Text(_cursosonce[index].cursoonce.substring(2,3)),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          );
        });
  }
}

class cursosprejardin {
  String cursopre='';

  cursosprejardin(cursopre){
    this.cursopre = cursopre;
  }
}

class cursosjardin{
  String cursojardin="";

  cursosjardin(cursojardin){
    this.cursojardin = cursojardin;
  }
}

class cursostransicion{
  String cursotransicion="";

  cursostransicion(cursotransicion){
    this.cursotransicion = cursotransicion;
  }
}

class cursosprimero{
  String cursoprimero="";

  cursosprimero(cursoprimero){
    this.cursoprimero = cursoprimero;
  }
}

class cursossegundo{
  String cursosegundo="";

  cursossegundo(cursosegundo){
    this.cursosegundo = cursosegundo;
  }
}

class cursostercero{
  String cursotercero="";

  cursostercero(cursotercero){
    this.cursotercero = cursotercero;
  }
}

class cursoscuarto{
  String cursocuarto="";

  cursoscuarto(cursocuarto){
    this.cursocuarto = cursocuarto;
  }
}

class cursosquinto{
  String cursoquinto="";

  cursosquinto(cursoquinto){
    this.cursoquinto = cursoquinto;
  }
}

class cursossexto{
  String cursosexto="";

  cursossexto(cursosexto){
    this.cursosexto = cursosexto;
  }
}

class cursosseptimo{
  String cursoseptimo="";

  cursosseptimo(cursoseptimo){
    this.cursoseptimo = cursoseptimo;
  }
}

class cursosoctavo{
  String cursooctavo="";

  cursosoctavo(cursooctavo){
    this.cursooctavo = cursooctavo;
  }
}

class cursosnoveno{
  String cursonoveno="";

  cursosnoveno(cursonoveno){
    this.cursonoveno = cursonoveno;
  }
}

class cursosdecimo{
  String cursodecimo="";

  cursosdecimo(cursodecimo){
    this.cursodecimo = cursodecimo;
  }
}

class cursosonce{
  String cursoonce="";

  cursosonce(cursoonce){
    this.cursoonce = cursoonce;
  }
}
