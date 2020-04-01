import 'package:flutter/material.dart';

class DrawerCustom extends StatefulWidget {
  PageController pageController;

  DrawerCustom({this.pageController});

//  const DrawerCustom({this.pageController});

  @override
  _DrawerCustomState createState() => _DrawerCustomState();
}

class _DrawerCustomState extends State<DrawerCustom> {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Image.asset('assets/logo.png')
          ),
          _buildListTile('Inicio',0),
//          _buildListTile('Nosotros',1),
//          _buildListTile('Nuestros Principios',2),
//          _buildListTile('Servicios',3),
//          _buildListTile('Clientes',7),
//          _buildListTile('Contacto',8),
        ],
      ),
    );
  }

  ListTile _buildListTile(String title, double page){
    PageController pageController = this.widget.pageController;
    ListTile(
      title: Text(title),
      onTap: () {
        pageController.animateTo(page,
            duration: Duration(seconds: 1), curve: Curves.ease);
      },
      trailing: Icon(Icons.arrow_forward_ios),
    );
  }
}
