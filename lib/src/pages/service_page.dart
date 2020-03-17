import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ServicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 80,),
        Text(
          'Servicios',
          style: TextStyle(fontSize: 50),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 140,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          _items('assets/consultoria.png', 'CONSULTORÍA EN RRHH'),
          _items('assets/evaluacion.png', 'EVALUACIÓN Y DESARROLLO DE TALENTO'),
          _items('assets/talentos.png', 'SELECCIÓN DE TALENTOS'),
        ],),
      ],
    );
  }

  Widget _items(String path, String text) {
    return Container(
      width: 300,
      height: 150,
      margin: EdgeInsets.symmetric(horizontal: 25),
      padding: EdgeInsets.symmetric(horizontal: 15),
      color: Colors.grey[200],
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
        Image.asset(path, width: 70,),
        Text(text,style: TextStyle(fontSize: 19), textAlign: TextAlign.center,),
      ]),
    );
  }
}
