import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ReportPage extends StatefulWidget {
  @override
  _ReportPageState createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
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
          Text('Requisitos (Reporte)', style: TextStyle(fontSize: 20.0)),
          ListTile(
            leading: Icon(Icons.people_alt_rounded),
            title: Text("Diseño De Un Nuevo Logo"),
            trailing: Text(
              "Trabajando",
              style: TextStyle(color: Colors.blue),
            ),
            subtitle: Text("El logo actual no representa..."),
          ),
          Divider(),
          Text('Incidencias (Reporte)', style: TextStyle(fontSize: 20.0)),
          ListTile(
            leading: Icon(Icons.view_quilt_sharp),
            title: Text("Problemas con la pagina web"),
            trailing: Text(
              "Sin Resolver",
              style: TextStyle(color: Colors.red),
            ),
            subtitle: Text("En la pagina se tarda en cargar..."),
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
    );
  }
}
