import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes App'),
      ),
      body: ListView(children: _crearItemsCorto()),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = List<Widget>();

    for (var item in opciones) {
      final tempWidget = ListTile(
        title: Text(item),
      );

      lista.add(tempWidget);
    }

    return lista;
  }

  List<Widget> _crearItemsCorto() {
    return opciones.map((item) {
      return Column(
        children: [
          ListTile(
            title: Text(item + '!!!!'),
            subtitle: Text('Subtitulo'),
            leading: Icon(Icons.accessibility_outlined),
            trailing: Icon(Icons.adb),
          ),
          Divider(),
        ],
      );
    }).toList();
  }
}
