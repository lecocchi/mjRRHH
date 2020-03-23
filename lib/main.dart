import 'package:flutter/material.dart';
import 'package:mjRRHH/src/pages/clients_page.dart';
import 'package:mjRRHH/src/pages/contacts_page.dart';
import 'package:mjRRHH/src/pages/principles_page.dart';
import 'package:mjRRHH/src/pages/we_page.dart';
import 'package:mjRRHH/src/pages/home_page.dart';
import 'package:mjRRHH/src/pages/service_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: {
        '/home': (BuildContext context) => HomePage(),
        '/we': (BuildContext context) => WePage(),
        '/principle': (BuildContext context) => PrinciplesPage(),
        '/service': (BuildContext context) => ServicePage(),
        '/client': (BuildContext context) => ClientsPage(),
        '/contact': (BuildContext context) => ContactsPage(),
      },
      title: 'MJ RRHH',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
