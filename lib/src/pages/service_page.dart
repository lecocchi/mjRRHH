import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ServicePage extends StatefulWidget {
  final pageController;

  const ServicePage({Key key, this.pageController}) : super(key: key);

  @override
  _ServicePageState createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
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
          _buildItems('assets/consultoria.png', 'CONSULTORÍA EN RRHH', 4),
          _buildItems('assets/evaluacion.png','EVALUACIÓN Y DESARROLLO DE TALENTO', 5),
          _buildItems('assets/talentos.png', 'SELECCIÓN DE TALENTOS', 6),
        ],),
      ],
    );
  }

  Widget _buildItems(String path, String text, int page) {
    return GestureDetector(
      onTap: (){
        this.widget.pageController.animateToPage(page,
            duration: Duration(milliseconds: 700), curve: Curves.ease);
      },
      child: Container(
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
      ),
    );
  }
}
