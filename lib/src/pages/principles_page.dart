import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mjRRHH/src/widgets/app_bar_customer.dart';

class PrinciplesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustomer(),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: (_isCellPhoneSize(context))
              ? null
              : (MediaQuery.of(context).size.height - kToolbarHeight),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Text(
                'Nuestros principios',
                style: TextStyle(
                  fontSize: (_isCellPhoneSize(context)) ? 35 : 60,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: (_isCellPhoneSize(context)) ? 20 : 0,
              ),
              Expanded(
                flex: (_isCellPhoneSize(context)) ? 0 : 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Wrap(
                      alignment: WrapAlignment.center,
                      children: <Widget>[
                        _itemPrinciples(
                            context,
                            FontAwesomeIcons.grin,
                            'CALIDAD',
                            'El objetivo de realizar  trabajos de calidad es satisfacer las necesidades de nuestros clientes, entendiendo y alineando las expectativas acerca de los servicios brindados'),
                        _itemPrinciples(
                            context,
                            FontAwesomeIcons.thumbsUp,
                            'EFECTIVIDAD',
                            'De esta forma unimos la eficiencia y eficacia, es decir, lograr un efecto deseado en el menor tiempo posible y con la menor cantidad de recursos.'),
                        _itemPrinciples(
                            context,
                            FontAwesomeIcons.handshake,
                            'COMPROMISO',
                            'Cumplimos con nuestras obligaciones, con aquello que se nos ha sido encomendado. Es decir, que planificamos y reaccionamos de forma acertada para conseguir sacar adelante un proyecto, y así cumplir con lo acordado.'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _itemPrinciples(
      BuildContext context, IconData icon, String title, String text) {
    return Container(
      width: 300,
      margin: EdgeInsets.all(15),
      child: Column(
        children: <Widget>[
          Icon(
            icon,
            size: (_isCellPhoneSize(context)) ? 40 : 60,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 22),
          ),
          Container(
              margin: EdgeInsets.only(top: 15),
              child: Text(
                text,
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.center,
              ))
        ],
      ),
    );
  }

  bool _isCellPhoneSize(BuildContext context) =>
      MediaQuery.of(context).size.width < 1000;
}
