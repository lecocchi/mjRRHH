import 'package:flutter/material.dart';

class ConsultingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 300,
              height: 150,
              margin: EdgeInsets.only(bottom: 55),
              padding: EdgeInsets.symmetric(horizontal: 15),
              color: Colors.grey[200],
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Image.asset(
                      'assets/consultoria.png',
                      width: 70,
                    ),
                    Text(
                      'CONSULTORÍA EN RRHH',
                      style: TextStyle(fontSize: 19),
                      textAlign: TextAlign.center,
                    ),
                  ]),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _buildItem('Realización de Start Up'),
                _buildItem(
                    'Elaboración de Perfiles  y Descripciones de Puestos.'),
                _buildItem('Implementación de la Gestión por Competencias.'),
                _buildItem('Gestión del Cambio, Cultura y Visión.'),
                _buildItem('Asesoría y medición de clima laboral.'),
                _buildItem('Comunicación Interna.'),
              ],
            ),
          ],
        ),
        Image.asset(
          'assets/consulting.jpg',
          width: 600,
        ),
      ],
    );
  }

  Widget _buildItem(String text) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              right: 10,
            ),
            width: 5,
            height: 5,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), color: Colors.black),
          ),
          Text(
            text,
            style: TextStyle(fontSize: 19),
          ),
        ],
      ),
    );
  }
}
