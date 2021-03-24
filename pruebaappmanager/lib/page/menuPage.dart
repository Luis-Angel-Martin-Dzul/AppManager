import 'package:flutter/material.dart';
import 'package:pruebaappmanager/main.dart';
import 'package:pruebaappmanager/page/1juntas.dart';
import 'package:pruebaappmanager/page/2tareas.dart';
import 'package:pruebaappmanager/page/3incidencias.dart';
import 'package:pruebaappmanager/page/4requisitos.dart';
import 'package:pruebaappmanager/page/perfil.dart';

class MyHome extends StatefulWidget {
  MyHome({this.usernameID});
  final String usernameID;

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyHome> {
  int _selectedTabIndex = 0;

  List _pages = [
    //OPCION NUMERO 1
    Juntas1(usernameID: usernameID),
    //OPCION NUMERO 2
    Tareas2Page(usernameID: usernameID),
    //OPCION NUMERO 3
    Incidencias3Page(usernameID: usernameID),
    //OPCION NUMERO 4
    Requisitos4(usernameID: usernameID),
    //OPCION NUMERO 5
    PerfilPage(usernameID: usernameID),
  ];

  _changeIndex(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("AP Manager"),
          centerTitle: true,
          backgroundColor: Colors.lightBlue[900]),
      body: Center(child: _pages[_selectedTabIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTabIndex,
        onTap: _changeIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.business_center_rounded, color: Colors.blue),
              title: Text("Juntas", style: TextStyle(color: Colors.blue))),
          BottomNavigationBarItem(
              icon:
                  Icon(Icons.format_list_numbered_outlined, color: Colors.blue),
              title: Text("Tareas", style: TextStyle(color: Colors.blue))),
          BottomNavigationBarItem(
              icon: Icon(Icons.report_problem, color: Colors.blue),
              title: Text("Incidencias", style: TextStyle(color: Colors.blue))),
          BottomNavigationBarItem(
              icon: Icon(Icons.report_rounded, color: Colors.blue),
              title: Text("Requisitos", style: TextStyle(color: Colors.blue))),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.blue),
              title: Text("Mi Perfil", style: TextStyle(color: Colors.blue))),
        ],
      ),
    );
  }
}
