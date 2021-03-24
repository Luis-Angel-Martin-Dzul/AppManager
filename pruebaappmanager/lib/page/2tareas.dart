import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class Tareas2Page extends StatelessWidget {
  Tareas2Page({this.usernameID});
  final String usernameID;

  Future<List> getDataTareas() async {
    final response =
        await http.post("http://192.168.0.6/bd_apmanager/tareas.php", body: {
      "IDusername": usernameID,
    });
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new FutureBuilder<List>(
        future: getDataTareas(),
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
      ),
    );
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
          padding: const EdgeInsets.all(5.0),
          child: new GestureDetector(
            child: new Card(
              child: new ListTile(
                title: new Text(
                  list[i]['Titulo'],
                  style: TextStyle(fontSize: 21.0, color: Colors.blue[800]),
                ),
                leading: new Icon(
                  Icons.format_list_numbered_outlined,
                  size: 60.0,
                  color: Colors.blue[800],
                ),
                subtitle: new Text(
                  "Motivo : ${list[i]['Descripcion']}",
                  style: TextStyle(fontSize: 15.0, color: Colors.black),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
