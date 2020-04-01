import 'package:flutter/material.dart';
import 'package:mjRRHH/src/widgets/scheme_widget.dart';

class WePage extends StatelessWidget {
  const WePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SchemeWidget(
      assets: 'assets/we.jpg',
      title: 'Nosotros',
      content: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 15, left: 15, bottom: 15),
            padding: EdgeInsets.all(15),
            width: MediaQuery.of(context).size.width,
            color: Colors.white.withOpacity(0.7),
            child: Text(
              'Somos un equipo de trabajo que brinda soluciones integrales en la gestion del capital humano, con foco en el desarrollo, la eficiencia y el acompañamiento del negocio, tanto para empresas privadas como para organismos públicos.',
              style: TextStyle(
                fontFamily: 'yugothic',
                fontSize: (_isCellPhoneSize(context)) ? 15 : 30,
                height: 2,
              ),
            ),
          )
        ],
      ),
    );
  }

  bool _isCellPhoneSize(BuildContext context) =>
      MediaQuery.of(context).size.width < 1000;
}
