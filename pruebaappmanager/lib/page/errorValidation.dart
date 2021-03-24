import 'package:flutter/material.dart';

class nivelPage extends StatefulWidget {
  @override
  _nivelPageState createState() => _nivelPageState();
}

class _nivelPageState extends State<nivelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Colors.indigoAccent),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Invalido",
              style: TextStyle(color: Colors.white, fontSize: 60),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Usuario/Contraseña invalidos",
              style: TextStyle(
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            RaisedButton(
              child: Text('Salir'),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/LoginPage');
              },
              color: Color(0xff0091EA),
              textColor: Colors.white,
              splashColor: Colors.grey,
              padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
            ),
          ],
        ),
      ),
    );
  }
}
