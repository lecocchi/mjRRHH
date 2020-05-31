import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mjRRHH/src/widgets/service_responsive_widget.dart';

class TalentsPage extends StatefulWidget {
  final pageController;

  const TalentsPage({Key key, this.pageController}) : super(key: key);

  @override
  _TalentsPageState createState() => _TalentsPageState();
}

class _TalentsPageState extends State<TalentsPage> {
  @override
  Widget build(BuildContext context) {
    return ((_isCellPhoneSize(context)))
        ? ServiceResponsiveWidget(
            assetNameBackground: 'assets/talents.jpg',
            title: 'SELECCIÓN DE TALENTOS',
            assetNameIcon: 'assets/talentos.png',
            items: [
              _buildItemsResponsive('Assessment center'),
              _buildItemsResponsive('Mandos Medios'),
              _buildItemsResponsive('Técnicos'),
              _buildItemsResponsive('Vendedores'),
              _buildItemsResponsive('Operarios'),
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
                            'assets/talentos.png',
                            width: 70,
                          ),
                          Text(
                            'SELECCIÓN DE TALENTOS',
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
                      _buildItem('Assessment center'),
                      _buildItem('Mandos Medios'),
                      _buildItem('Técnicos'),
                      _buildItem('Vendedores'),
                      _buildItem('Operarios'),
                    ],
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Image.asset(
                  'assets/talents.jpg',
                  width: 600,
                ),
              ),
            ],
          );
  }

  Widget _buildItemsResponsive(String text) {
    return Container(
      height: 35,
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
              color: Color(0xFF464343),
            ),
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
