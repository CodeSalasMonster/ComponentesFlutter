import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['uno', 'dos', 'tres', 'cuatro', 'cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        // children: _crearItems(),
        children: _crearItemsCortos(),
      ),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> ls = new List<Widget>();

    for (var opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      ls..add(tempWidget)
        ..add(Divider());

    }

    return ls;
  }


  List<Widget> _crearItemsCortos(){
    return opciones.map((f){
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(f+'!'),
            subtitle: Text('Loren ipsum'),
            leading: Icon(Icons.ac_unit),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){
              print('Hola');
            },
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
