import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mjRRHH/src/widgets/scheme_widget.dart';

class PrinciplesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SchemeWidget(
      assets: 'assets/principles.jpg',
      title: 'NUESTROS PRINCIPIOS',
      content: (_isCellPhoneSize(context))
          ? Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _items(context),
            )
          : Column(
        mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: _items(context),
                ),
            ],
          ),
    );
  }

  Widget _buildItems(BuildContext context) {
    if (_isCellPhoneSize(context)) {
      return Expanded(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: _items(context),
      ));
    } else {
      return Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: _items(context),
            ),
          ],
        ),
      );
    }
  }

  List<Widget> _items(BuildContext context) {
    return [
      _itemPrinciples(
        context,
        FontAwesomeIcons.grin,
        'CALIDAD',
        'El objetivo de realizar  trabajos de calidad es satisfacer las necesidades de nuestros clientes, entendiendo y alineando las expectativas acerca de los servicios brindados',
      ),
      _itemPrinciples(context, FontAwesomeIcons.thumbsUp, 'EFECTIVIDAD',
          'De esta forma unimos la eficiencia y eficacia, es decir, lograr un efecto deseado en el menor tiempo posible y con la menor cantidad de recursos.'),
      _itemPrinciples(context, FontAwesomeIcons.handshake, 'COMPROMISO',
          'Cumplimos con nuestras obligaciones, con aquello que se nos ha sido encomendado. Es decir, que planificamos y reaccionamos de forma acertada para conseguir sacar adelante un proyecto, y así cumplir con lo acordado.'),
    ];
  }

  Widget _itemPrinciples(
      BuildContext context, IconData icon, String title, String text) {
    return Container(
      width: (_isCellPhoneSize(context)) ? double.infinity : 350,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          (_isCellPhoneSize(context))
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Icon(
                      icon,
                      size: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      title,
                      style: TextStyle(
                        fontFamily: 'LEPORSCHE',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              : Column(
                  children: <Widget>[
                    Icon(
                      icon,
                      size: 60,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      title,
                      style: TextStyle(
                        fontFamily: 'LEPORSCHE',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
          Container(
              margin: EdgeInsets.only(top: 5),
              child: Text(
                text,
                style: TextStyle(
                  fontFamily: 'yugothic',
                  fontSize: (_isCellPhoneSize(context)) ? 14 : 19,
                ),
                textAlign: TextAlign.center,
              ))
        ],
      ),
    );
  }

  bool _isCellPhoneSize(BuildContext context) =>
      MediaQuery.of(context).size.width < 1000;
}
