import 'dart:ui';

import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyHome> {
  int _selectedTabIndex = 0;

  List _pages = [
    //OPCION NUMERO 1
    Text('Menu Principal'),
    //OPCION NUMERO 2
    ListView(
      children: <Widget>[
        SizedBox(
          height: 50,
        ),
        Text('Reuniones Pendientes', style: TextStyle(fontSize: 20.0)),
        ListTile(
          leading: Icon(Icons.people_alt_rounded),
          title: Text("Entrega"),
          trailing: Text(
            "Pendiente",
            style: TextStyle(color: Colors.red),
          ),
          subtitle: Text("Reunion para tratar temas de..."),
        ),
        //Tareas
        Divider(),
        Text('Tareas Pendientes', style: TextStyle(fontSize: 20.0)),
        ListTile(
          leading: Icon(Icons.view_quilt_sharp),
          title: Text("Falla Boton"),
          trailing: Text(
            "Sin Resolver",
            style: TextStyle(color: Colors.red),
          ),
          subtitle: Text("Boton que no funciona al picarle"),
        ),
        ListTile(
          leading: Icon(Icons.view_quilt_sharp),
          title: Text("Error En Login"),
          trailing: Text(
            "Sin Resolver",
            style: TextStyle(color: Colors.red),
          ),
          subtitle: Text("Se queda cargando por mucho tiempo...."),
        ),
      ],
    ),
    //OPCION NUMERO 3
    Column(
      children: <Widget>[
        Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.blue[900], Colors.white])),
            child: Container(
              width: double.infinity,
              height: 350.0,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                        "http://www.alass.org/wp-content/uploads/default.png",
                      ),
                      radius: 50.0,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Tu Nombre",
                      style: TextStyle(
                        fontSize: 22.0,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Card(
                      margin:
                          EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                      clipBehavior: Clip.antiAlias,
                      color: Colors.white,
                      elevation: 5.0,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 22.0),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Proyectos",
                                    style: TextStyle(
                                      color: Colors.indigo[700],
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    "5200",
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.indigo[700],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Pendientes",
                                    style: TextStyle(
                                      color: Colors.indigo[900],
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    "28.5K",
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.indigo[700],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )),
        SizedBox(
          height: 20.0,
        ),
      ],
    ),
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
          title: Text("APP Manager"),
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
              icon: Icon(Icons.view_list_rounded),
              title: Text("Reunion/Tareas")),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), title: Text("Mi Cuenta")),
        ],
      ),
    );
  }
}
