import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PrincipalPage extends StatefulWidget {
  @override
  _PrincipalPageState createState() => _PrincipalPageState();
}

class _PrincipalPageState extends State<PrincipalPage> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
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
            title: Text("Base De Datos"),
            trailing: Text(
              "Sin Resolver",
              style: TextStyle(color: Colors.red),
            ),
            subtitle: Text("Desarrollar la base de datos para..."),
          ),
          ListTile(
            leading: Icon(Icons.view_quilt_sharp),
            title: Text("Login"),
            trailing: Text(
              "Sin Resolver",
              style: TextStyle(color: Colors.red),
            ),
            subtitle: Text("Crear un login funcional y...."),
          ),
        ],
      ),
    );
  }
}
