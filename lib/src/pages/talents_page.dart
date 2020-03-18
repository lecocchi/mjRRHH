import 'package:flutter/material.dart';

class TalentsPage extends StatefulWidget {
  final pageController;

  const TalentsPage({Key key, this.pageController}) : super(key: key);

  @override
  _TalentsPageState createState() => _TalentsPageState();
}

class _TalentsPageState extends State<TalentsPage> {
  @override
  Widget build(BuildContext context) {
    return Row(
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
                      'assets/talentos.png',
                      width: 70,
                    ),
                    Text(
                      'SELECCIÓN DE TALENTOS',
                      style: TextStyle(fontSize: 19),
                      textAlign: TextAlign.center,
                    ),
                  ]),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _buildItem('Assessment center.'),
                _buildItem('Mandos Medios.'),
                _buildItem('Técnicos.'),
                _buildItem('Vendedores.'),
                _buildItem('Operarios.'),
              ],
            ),
            Expanded(
              child: SizedBox(),
            ),
            _buildReturnService(widget.pageController),
            SizedBox(
              height: 10,
            ),
          ],
        ),
        Image.asset(
          'assets/talents.jpg',
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

  Widget _buildReturnService(PageController pageController) {
    return Container(
      child: FlatButton(
          onPressed: () {
            pageController.animateToPage(3,
                duration: Duration(milliseconds: 700), curve: Curves.ease);
          },
          child: Row(
            children: <Widget>[
              Icon(
                Icons.arrow_back_ios,
                size: 20,
                color: Color(0xFFcc854f),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Volver a los Servicios',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFcc854f)),
              )
            ],
          )),
    );
  }
}
