import 'package:flutter/material.dart';

class ServiceResponsiveWidget extends StatelessWidget {
  final title;
  final assetNameIcon;
  final assetNameBackground;
  final List<Widget> items;

  const ServiceResponsiveWidget(
      {@required this.assetNameBackground,
      @required this.items,
      @required this.title,
      @required this.assetNameIcon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          height: 120,
          padding: EdgeInsets.symmetric(horizontal: 15),
          color: Colors.grey[200],
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset(
                  this.assetNameIcon,
                  width: 60,
                ),
                Text(
                  this.title,
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'yugothic',
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ]),
        ),
        Expanded(
            child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(this.assetNameBackground),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            color: Colors.white.withOpacity(0.7),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: this.items,
            ),
          ),
        )),
      ],
    );
  }
}
