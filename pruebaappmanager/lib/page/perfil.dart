import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class PerfilPage extends StatelessWidget {
  PerfilPage({this.usernameID});
  final String usernameID;

  Future<List> getDataPerfil() async {
    final response =
        await http.post("http://192.168.0.6/bd_apmanager/perfil.php", body: {
      "usernameID": usernameID,
    });
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new FutureBuilder<List>(
      future: getDataPerfil(),
      builder: (context, snapshot) {
        if (snapshot.hasError) print(snapshot.error);
        return snapshot.hasData
            ? new ItemList(
                list: snapshot.data,
              )
            : new Center(
                child: new CircularProgressIndicator(),
              );
      },
    ));
  }
}

class ItemList extends StatelessWidget {
  final List list;
  ItemList({this.list});

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: list == null ? 0 : list.length,
      itemBuilder: (context, i) {
        return new Container(
          padding: EdgeInsets.all(20),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Colors.indigoAccent),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://pa1.narvii.com/6857/c22f334600d1dba2bc9dd6bd3677d87bca3c554e_hq.gif",
                ),
                radius: 50.0,
              ),
              Text(
                list[i]['NombreEmpleado'],
                style: TextStyle(color: Colors.white, fontSize: 37),
              ),
              Text(
                list[i]['TelefonoEmpleado'],
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        );
      },
    );
  }
}
