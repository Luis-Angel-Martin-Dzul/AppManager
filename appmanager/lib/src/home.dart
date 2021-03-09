import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.person,
                  size: 50.0,
                ),
              ),
              accountName: Text('Nombre Usuario'),
              accountEmail: Text('usuario@gmail.com'),
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(
                  Icons.person_outline,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
              title: Text("Configurar Perfil"),
              onTap: () {},
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(
                  Icons.settings,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
              title: Text("Configuraciones"),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(
                  Icons.help_outline,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
              title: Text("Sobre Nosotros"),
              onTap: () {},
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(
                  Icons.cached,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
              title: Text("Recargar"),
              onTap: () {
                Navigator.pushNamed(context, '/login');
              },
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(
                  Icons.exit_to_app,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
              title: Text("Cerrar Sesion"),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Juntas"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff252850),
        onPressed: () {},
        child: Icon(Icons.add, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color(0xff252850),
            ),
            title: Text(
              'Principal',
              style: TextStyle(
                color: Color(0xff252850),
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            title: Text('PENSAR_NOMBRE'),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            child: ListTile(
              leading: Icon(Icons.calendar_today_rounded),
              title: Text("Entrega"),
              trailing: Text(
                "Pend",
                style: TextStyle(color: Colors.red),
              ),
              subtitle: Text("Realizacion de la entrega final del..."),
            ),
          ),
          ListTile(
            leading: Icon(Icons.event_available),
            title: Text("Dudas"),
            trailing: Text(
              "Citado",
              style: TextStyle(color: Colors.green),
            ),
            subtitle: Text(
                "Citacion para responder a las dudas que tenga sobre el avance de su..."),
          ),
        ],
      ),
    );
  }
}
