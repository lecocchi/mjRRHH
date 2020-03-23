import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mjRRHH/src/widgets/app_bar_customer.dart';
import 'package:mjRRHH/src/widgets/logo_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustomer(),
      drawer: (MediaQuery.of(context).size.width < 1000) ? Drawer() : null,
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: (MediaQuery.of(context).size.width < 1000)
                    ? MediaQuery.of(context).size.height
                    : null,
                child: Image.asset(
                  'assets/background_clean.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              LogoWidget(),
            ],
          )),
    );
  }
}
