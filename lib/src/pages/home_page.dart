import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mjRRHH/src/pages/clients_page.dart';
import 'package:mjRRHH/src/pages/consulting_page.dart';
import 'package:mjRRHH/src/pages/contacts_page.dart';
import 'package:mjRRHH/src/pages/evaluation_page.dart';
import 'package:mjRRHH/src/pages/principal_page.dart';
import 'package:mjRRHH/src/pages/principles_page.dart';
import 'package:mjRRHH/src/pages/talents_page.dart';

import 'we_page.dart';
import 'service_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppBar(
          backgroundColor: Colors.blueGrey,
          leading: (MediaQuery.of(context).size.width > 1000) ? _buildLogo() : null,
          actions: (MediaQuery.of(context).size.width > 1000)
              ? <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          _fieldMenu('Inicio', 0),
                          _fieldMenu('Nosotros', 1),
                          _fieldMenu('Nuestros Principios', 2),
                          _fieldMenu('Servicios', 3),
                          _fieldMenu('Clientes', 7),
                          _fieldMenu('Contacto', 8),
                        ],
                      ),
                    ],
                  )
                ]
              : null,
        ),
      ),
      drawer: (MediaQuery.of(context).size.width < 1000) ? Drawer() : null,
      body: PageView(
        physics: (MediaQuery.of(context).size.width < 1000) ? AlwaysScrollableScrollPhysics() : NeverScrollableScrollPhysics(),
        controller: pageController,
        scrollDirection: Axis.vertical,
        children: <Widget>[
          PrincipalPage(),
          WePage(),
          PrinciplesPage(),
          ServicePage(pageController: pageController),
          ConsultingPage(pageController: pageController),
          EvaluationPage(pageController: pageController),
          TalentsPage(pageController: pageController),
          ClientsPage(),
          ContactsPage(),
        ],
      ),
    );
  }

  Widget _buildLogo() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.grey,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
        Text('MJ', style: TextStyle(color: Colors.white, fontSize: 22),)
      ],),
    );
  }

  Widget _fieldMenu(String name, int page) {
    return FlatButton(
        onPressed: () {
          pageController.animateToPage(page,
              duration: Duration(milliseconds: 700), curve: Curves.ease);
        },
        child: Text(
          name,
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ));
  }
}
