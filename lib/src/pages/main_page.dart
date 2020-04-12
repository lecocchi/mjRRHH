import 'package:flutter/material.dart';
import 'package:mjRRHH/src/pages/clients_page.dart';
import 'package:mjRRHH/src/pages/consulting_page.dart';
import 'package:mjRRHH/src/pages/contacts_page.dart';
import 'package:mjRRHH/src/pages/evaluation_page.dart';
import 'package:mjRRHH/src/pages/home_page.dart';
import 'package:mjRRHH/src/pages/principles_page.dart';
import 'package:mjRRHH/src/pages/service_page.dart';
import 'package:mjRRHH/src/pages/talents_page.dart';
import 'package:mjRRHH/src/pages/we_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF767070),
        title: Text(
          (_isCellPhoneSize(context)) ? 'MJ' : 'MJ Recursos Humanos',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'LEPORSCHE',
          ),
        ),
        actions: (_isCellPhoneSize(context))
            ? null
            : <Widget>[
                _fieldMenu('Inicio', 0),
                _fieldMenu('Nosotros', 1),
                _fieldMenu('Nuestros Principios', 2),
                _fieldMenu('Servicios', 3),
                _fieldMenu('Clientes', 7),
                _fieldMenu('Contacto', 8),
              ],
      ),
      drawer: (_isCellPhoneSize(context))
          ? Drawer(
              child: _buildDrawerContent(_pageController),
            )
          : null,
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: _pageController,
        pageSnapping: false,
        children: <Widget>[
          HomePage(),
          WePage(),
          PrinciplesPage(),
          ServicePage(
            pageController: _pageController,
          ),
          ConsultingPage(
            pageController: _pageController,
          ),
          EvaluationPage(
            pageController: _pageController,
          ),
          TalentsPage(
            pageController: _pageController,
          ),
          ClientsPage(),
          ContactsPage(),
        ],
      ),
    );
  }

  Widget _fieldMenu(String name, int page) {
    return FlatButton(
        onPressed: () {
          _pageController.animateToPage(page,
              duration: Duration(seconds: 1), curve: Curves.ease);
        },
        child: Text(
          name,
          style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontFamily: 'yugothic'),
        ));
  }

  ListView _buildDrawerContent(PageController pageController) {
    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(child: Image.asset('assets/logo.png')),
        _buildItemMenu('Inicio', 0),
        _buildItemMenu('Nosotros', 1),
        _buildItemMenu('Nuestros Principios', 2),
        _buildItemMenu('Servicios', 3),
        _buildItemMenu('Clientes', 7),
        _buildItemMenu('Contacto', 8),
      ],
    );
  }

  FlatButton _buildItemMenu(String title, int page) {
    return FlatButton(
      onPressed: () {
        Navigator.pop(context);
        _pageController.animateToPage(page,
            duration: Duration(seconds: 1), curve: Curves.ease);
      },
      child: Row(
        children: <Widget>[
          Text(title),
        ],
      ),
    );
  }

  bool _isCellPhoneSize(BuildContext context) =>
      MediaQuery.of(context).size.width < 1000;
}
