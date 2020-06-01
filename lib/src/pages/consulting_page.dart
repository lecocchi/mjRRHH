import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mjRRHH/src/widgets/service_responsive_widget.dart';

class ConsultingPage extends StatefulWidget {
  final pageController;

  const ConsultingPage({Key key, this.pageController}) : super(key: key);

  @override
  _ConsultingPageState createState() => _ConsultingPageState();
}

class _ConsultingPageState extends State<ConsultingPage> {
  @override
  Widget build(BuildContext context) {
    return (_isCellPhoneSize(context))
        ? ServiceResponsiveWidget(
            title: 'CONSULTORÍA EN RRHH',
            assetNameIcon: 'assets/consultoria.png',
            assetNameBackground: 'assets/consulting.jpg',
            items: [
              _buildItemsResponsive('Realización de Start Up'),
              _buildItemsResponsive(
                  'Elaboración de Perfiles  y Descripciones de Puestos.'),
              _buildItemsResponsive(
                  'Implementación de la Gestión por Competencias.'),
              _buildItemsResponsive('Gestión del Cambio, Cultura y Visión.'),
              _buildItemsResponsive('Asesoría y medición de clima laboral.'),
              _buildItemsResponsive('Comunicación Interna.'),
            ],
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 300,
                    height: 150,
                    margin: EdgeInsets.only(bottom: 55, top: 20),
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
                          style: TextStyle(
                            fontSize: 19,
                            fontFamily: 'yugothic',
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      _buildItem('Realización de Start Up'),
                      _buildItem(
                          'Elaboración de Perfiles  y Descripciones de Puestos.'),
                      _buildItem(
                          'Implementación de la Gestión por Competencias.'),
                      _buildItem('Gestión del Cambio, Cultura y Visión.'),
                      _buildItem('Asesoría y medición de clima laboral.'),
                      _buildItem('Comunicación Interna.'),
                    ],
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Image.asset(
                  'assets/consulting.jpg',
                  width: 600,
                ),
              ),
            ],
          );
  }

  Widget _buildItemsResponsive(String text) {
    return Container(
      height: 55,
      child: ListTile(
        leading: Container(
          margin: EdgeInsets.only(top: 7),
          width: 7,
          height: 7,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Color(0xFF464343)),
        ),
        title: Text(
          text,
          style: TextStyle(fontFamily: 'yugothic', fontWeight: FontWeight.bold),
        ),
      ),
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
            width: 7,
            height: 7,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xFF464343)),
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 19,
              fontFamily: 'yugothic',
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  bool _isCellPhoneSize(BuildContext context) =>
      MediaQuery.of(context).size.width < 1000;
}
