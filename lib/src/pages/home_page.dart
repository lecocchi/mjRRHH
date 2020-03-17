import 'package:flutter/material.dart';
import 'package:mjRRHH/src/pages/clients_page.dart';
import 'package:mjRRHH/src/pages/contacts_page.dart';
import 'package:mjRRHH/src/pages/principal_page.dart';
import 'package:mjRRHH/src/pages/principles_page.dart';

import 'we_page.dart';
import 'service_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          height: Size.fromHeight(kToolbarHeight).height,
          padding: EdgeInsets.only(left: 30, right: 10),
          color: Colors.white,
          child: Row(
            children: <Widget>[
              _logo(),
              Expanded(child: SizedBox()),
              _fieldMenu('Inicio', 0),
              _fieldMenu('Nosotros', 1),
              _fieldMenu('Nuestros Principios', 2),
              _fieldMenu('Servicios', 3),
              _fieldMenu('Clientes', 4),
              _fieldMenu('Contacto', 5),
            ],
          ),
        ),
        Expanded(
            child: PageView(
          controller: pageController,
          scrollDirection: Axis.vertical,
          children: <Widget>[
            PrincipalPage(),
            WePage(),
            PrinciplesPage(),
            ServicePage(),
            ClientsPage(),
            ContactsPage(),
          ],
        ))
      ],
    );
  }

  Widget _logo() {
    return Icon(
      Icons.account_balance,
      size: 50,
    );
  }

  Widget _fieldMenu(String name, int page) {
    return FlatButton(
        onPressed: () {
          pageController.animateToPage(page,
              duration: Duration(seconds: 1), curve: Curves.ease);
        },
        child: Text(
          name,
          style: TextStyle(
              color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold),
        ));
  }
}
