import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PrinciplesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Image.asset('assets/principles.jpg', fit: BoxFit.cover,),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text('Nuestros principios', style: TextStyle(fontSize: 50), textAlign: TextAlign.center,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _itemPrinciples(context, FontAwesomeIcons.grin, 'CALIDAD', 'El objetivo de realizar  trabajos de calidad es satisfacer las necesidades de nuestros clientes, entendiendo y alineando las expectativas acerca de los servicios brindados'),
                _itemPrinciples(context, FontAwesomeIcons.thumbsUp, 'EFECTIVIDAD', 'De esta forma unimos la eficiencia y eficacia, es decir, lograr un efecto deseado en el menor tiempo posible y con la menor cantidad de recursos.'),
                _itemPrinciples(context, FontAwesomeIcons.handshake, 'COMPROMISO', 'Cumplimos con nuestras obligaciones, con aquello que se nos ha sido encomendado. Es decir, que planificamos y reaccionamos de forma acertada para conseguir sacar adelante un proyecto, y así cumplir con lo acordado.'),
              ],
            ),
          ],
        ),
      ],
    );
  }


  Widget _itemPrinciples(BuildContext context, IconData icon, String title, String text){
    return Column(
      children: <Widget>[
        Icon(icon, size: 60,),
        SizedBox(height: 10,),
        Text(title, style: TextStyle(fontSize: 22),),
        Container(
            margin: EdgeInsets.only(top: 15),
            width: MediaQuery.of(context).size.width / 4,
            child: Text(text, style: TextStyle(fontSize: 17), textAlign: TextAlign.center,))
      ],
    );
  }


}
