import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mjRRHH/src/widgets/app_bar_customer.dart';

class ServicePage extends StatefulWidget {
  final pageController;

  const ServicePage({Key key, this.pageController}) : super(key: key);

  @override
  _ServicePageState createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
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
                'Servicios',
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
                        _buildItems(
                            'assets/consultoria.png', 'CONSULTORÍA EN RRHH', 4),
                        _buildItems('assets/evaluacion.png',
                            'EVALUACIÓN Y DESARROLLO DE TALENTO', 5),
                        _buildItems(
                            'assets/talentos.png', 'SELECCIÓN DE TALENTOS', 6),
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


  Widget _buildItems(String path, String text, int page) {
    return GestureDetector(
      onTap: () {
        this.widget.pageController.animateToPage(page,
            duration: Duration(milliseconds: 700), curve: Curves.ease);
      },
      child: Container(
        width: 300,
        height: 150,
        margin: EdgeInsets.all(25),
        padding: EdgeInsets.symmetric(horizontal: 15),
        color: Colors.grey[200],
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset(
                path,
                width: 70,
              ),
              Text(
                text,
                style: TextStyle(fontSize: 19),
                textAlign: TextAlign.center,
              ),
            ]),
      ),
    );
  }

  bool _isCellPhoneSize(BuildContext context) =>
      MediaQuery.of(context).size.width < 1000;
}
