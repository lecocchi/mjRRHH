import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mjRRHH/src/widgets/scheme_widget.dart';

class ServicePage extends StatefulWidget {
  final pageController;

  const ServicePage({this.pageController});

  @override
  _ServicePageState createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  @override
  Widget build(BuildContext context) {
    return SchemeWidget(
      title: 'SERVICIOS',
      content: (_isCellPhoneSize(context))
          ? Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                _buildItems('assets/consultoria.png', 'CONSULTORÍA EN RRHH', 4),
                _buildItems('assets/evaluacion.png',
                    'EVALUACIÓN Y DESARROLLO \nDE TALENTO', 5),
                _buildItems('assets/talentos.png', 'SELECCIÓN DE TALENTOS', 6),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildItems('assets/consultoria.png', 'CONSULTORÍA EN RRHH', 4),
                _buildItems('assets/evaluacion.png',
                    'EVALUACIÓN Y DESARROLLO \nDE TALENTO', 5),
                _buildItems('assets/talentos.png', 'SELECCIÓN DE TALENTOS', 6),
              ],
            ),
    );
  }

  Widget _buildItems(String path, String text, int page) {
    return GestureDetector(
      onTap: () {
        this.widget.pageController.animateToPage(page,
            duration: Duration(milliseconds: 700), curve: Curves.ease);
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        width: (_isCellPhoneSize(context)) ? double.infinity : 310,
        height: (!_isCellPhoneSize(context)) ? 180 : null,
        color: Colors.grey[300],
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset(
                path,
                width: (_isCellPhoneSize(context)) ? 50 : 70,
              ),
              Text(
                text,
                style: TextStyle(
                  fontFamily: 'yugothic',
                  fontSize: (_isCellPhoneSize(context)) ? 15 : 19,
                  fontWeight: FontWeight.bold
                ),
                textAlign: TextAlign.center,
              ),
            ]),
      ),
    );
  }

  bool _isCellPhoneSize(BuildContext context) =>
      MediaQuery.of(context).size.width < 1000;
}
