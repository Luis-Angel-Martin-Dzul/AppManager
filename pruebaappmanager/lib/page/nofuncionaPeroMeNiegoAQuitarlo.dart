import 'package:pruebaappmanager/page/1juntas.dart';
import 'package:flutter/material.dart';

class Opcions extends StatelessWidget {
  Opcions({this.usernameID});
  final String usernameID;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ListViews',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
          body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('\Juntas',
                textAlign: TextAlign.center, style: TextStyle(fontSize: 25.0)),
            trailing: Icon(
              Icons.keyboard_arrow_right,
              size: 45.0,
            ),
            onTap: () {
              print('Juntas');
            },
          ),
          ListTile(
            title: Text('\tTareas',
                textAlign: TextAlign.center, style: TextStyle(fontSize: 25.0)),
            trailing: Icon(
              Icons.keyboard_arrow_right,
              size: 45.0,
            ),
            onTap: () {
              print('Tareas');
            },
          ),
          ListTile(
            title: Text('\tIncidencias',
                textAlign: TextAlign.center, style: TextStyle(fontSize: 25.0)),
            trailing: Icon(
              Icons.keyboard_arrow_right,
              size: 45.0,
            ),
            onTap: () {
              print('Incidencias');
            },
          ),
          ListTile(
            title: Text('\tRequisitos',
                textAlign: TextAlign.center, style: TextStyle(fontSize: 25.0)),
            trailing: Icon(
              Icons.keyboard_arrow_right,
              size: 45.0,
            ),
            onTap: () {
              print('Requisitos');
            },
          ),
        ],
      )),
    );
  }
}
