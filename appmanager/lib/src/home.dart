import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:appmanager/src/principal.dart';
import 'package:appmanager/src/report.dart';
import 'package:appmanager/src/perfil.dart';

class MyHome extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyHome> {
  int _selectedTabIndex = 0;

  List _pages = [
    //OPCION NUMERO 1
    PrincipalPage(),
    //OPCION NUMERO 2
    ReportPage(),
    //OPCION NUMERO 3
    PerfilPage()
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
              icon: Icon(Icons.home), title: Text("Principal")),
          BottomNavigationBarItem(
              icon: Icon(Icons.report_gmailerrorred_rounded),
              title: Text("Reportes")),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text("Mi Perfil")),
        ],
      ),
    );
  }
}
