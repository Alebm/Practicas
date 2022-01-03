import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

//envolvimos los metodos listview y listTile para llamar el context que se utiliza en el pushNamed
  Drawer getDrawer(BuildContext context) {
    // dos variables para llamar widget correspondientes al drawer, header e info
    var header = const DrawerHeader(
      child: Text("Ajustes"),
    );

    var info = const AboutListTile(
      child: Text("Informacion App"),
      applicationIcon: Icon(Icons.favorite),
      applicationVersion: "v1.0.0",
      icon: Icon(Icons.info),
    );
    // con el listTile creo los el metodo que necesito para la estructura del listView mediante los argumentos
    ListTile getItem(Icon icon, String description, String route) {
      return ListTile(
        leading: icon,
        title: Text(description),
        onTap: () {
          Navigator.pushNamed(context, route);
        },
      );
    }

/*el ListView me permite crear la lista que voy a ver en el drawer pasando los
argumentos al anterior creador de items "listtile"*/
    ListView getList() {
      return ListView(
        children: [
          header,
          getItem(const Icon(Icons.settings), "Settings", "/Settings"),
          getItem(const Icon(Icons.home), "Pantalla Principal", "/"),
          getItem(
              const Icon(Icons.battery_charging_full), "Battery", "/Battery"),
          info
        ],
      );
    }

    return Drawer(
      child: getList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pagina principal"),
      ),
      drawer: getDrawer(context),
    );
  }
}
