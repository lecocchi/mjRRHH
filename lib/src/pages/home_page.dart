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
   return Column(
     children: <Widget>[
       Container(
         width: double.infinity,
         height: Size.fromHeight(kToolbarHeight).height + 30,
         padding: EdgeInsets.only(left: 30, right: 10),
         color: Color(0xFFfaf2ec),
         child: Row(
           children: <Widget>[
             _buildLogo(),
             Expanded(child: SizedBox()),
             _fieldMenu('Inicio', 0),
             _fieldMenu('Nosotros', 1),
             _fieldMenu('Nuestros Principios', 2),
             _fieldMenu('Servicios', 3),
             _fieldMenu('Clientes', 7),
             _fieldMenu('Contacto', 8),
           ],
         ),
       ),
       Expanded(
           child: PageView(
         physics: NeverScrollableScrollPhysics(),
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
       ))
     ],
   );
  }

  Widget _buildLogo() {
    return Image.asset(
      'assets/logo.png',
      height: 80,
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
              color: Color(0xFFcc854f),
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ));
  }
}
