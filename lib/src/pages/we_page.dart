import 'package:flutter/material.dart';
import 'package:mjRRHH/src/widgets/app_bar_customer.dart';

class WePage extends StatelessWidget {
  const WePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustomer(),
      body: Stack(children: <Widget>[
        Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/we.jpg',
              fit: BoxFit.cover,
            )),
        Column(
          children: <Widget>[
            SizedBox(
              height: 15,
            ),
            Text(
              'Nosotros',
              style: TextStyle(fontSize: 60),
            ),
            Expanded(child: SizedBox()),
            Container(
              margin: EdgeInsets.only(right: 15, left: 15, bottom: 15),
              padding: EdgeInsets.all(15),
              width: MediaQuery.of(context).size.width,
              color: Colors.white.withOpacity(0.7),
              child: Text(
                'Somos un equipo de trabajo que brinda soluciones integrales en la gestion del capital humano, con foco en el desarrollo, la eficiencia y el acompañamiento del negocio, tanto para empresas privadas como para organismos públicos.',
                style: TextStyle(
                  fontSize: 30,
                  height: 2,
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
