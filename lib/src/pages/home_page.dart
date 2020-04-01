import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mjRRHH/src/widgets/scheme_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return SchemeWidget(
      assets: 'assets/background_clean.jpg',
      title: '',
      content: _buildLogo(),
    );
  }

  Widget _buildLogo() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: 10,
          color: Colors.white.withOpacity(0.8),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.white.withOpacity(0.8),
          height: 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'MJ RECURSOS HUMANOS',
                style: TextStyle(
                    fontFamily: 'LEPORSCHE',
                    color: Colors.black,
                    fontSize: (_isCellphoneSize(context)) ? 24 : 44),
              ),
              Text(
                'Tu socio estratégico',
                style: GoogleFonts.sourceSansPro(
                    color: Colors.black,
                    fontSize: (_isCellphoneSize(context)) ? 20 : 24,
                    fontStyle: FontStyle.italic),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 10,
          color: Colors.white.withOpacity(0.8),
        ),
        SizedBox(
          height: (_isCellphoneSize(context)) ? 20 : 40,
        ),
      ],
    );
  }

  bool _isCellphoneSize(BuildContext context) =>
      MediaQuery.of(context).size.width < 1000;
}
