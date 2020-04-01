import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mjRRHH/src/widgets/service_responsive_widget.dart';

class EvaluationPage extends StatefulWidget {
  final pageController;

  const EvaluationPage({Key key, this.pageController}) : super(key: key);

  @override
  _EvaluationPageState createState() => _EvaluationPageState();
}

class _EvaluationPageState extends State<EvaluationPage> {
  @override
  Widget build(BuildContext context) {
    return ((_isCellPhoneSize(context)))
        ? ServiceResponsiveWidget(
            assetNameBackground: 'assets/evaluation.jpg',
            title: 'EVALUACIÓN Y DESARROLLO DE TALENTO',
            assetNameIcon: 'assets/evaluacion.png',
            items: [
              _buildItemsResponsive('Capacitaciones.'),
              _buildItemsResponsive(
                  'Programas de Gestión y Evaluación del Desempeño.'),
              _buildItemsResponsive('Mapeo de talentos.'),
            ],
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                            'assets/evaluacion.png',
                            width: 70,
                          ),
                          Text(
                            'EVALUACIÓN Y DESARROLLO DE TALENTO',
                            style: TextStyle(
                                fontSize: 19,
                                fontFamily: 'yugothic',
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ]),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      _buildItem('Capacitaciones.'),
                      _buildItem(
                          'Programas de Gestión y Evaluación del Desempeño.'),
                      _buildItem('Mapeo de talentos.'),
                    ],
                  ),
                ],
              ),
              Image.asset(
                'assets/evaluation.jpg',
                width: 600,
              ),
            ],
          );
  }

  Widget _buildItemsResponsive(String text) {
    return Container(
      height: 50,
      child: ListTile(
        leading: Container(
          margin: EdgeInsets.only(top: 8),
          width: 7,
          height: 7,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Color(0xFF464343)),
        ),
        title: Text(
          text,
          style: TextStyle(
            fontFamily: 'yugothic',
            fontWeight: FontWeight.bold,
          ),
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
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  bool _isCellPhoneSize(BuildContext context) =>
      MediaQuery.of(context).size.width < 1000;
}
