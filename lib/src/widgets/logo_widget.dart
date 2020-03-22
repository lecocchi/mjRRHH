import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: (MediaQuery.of(context).size.width < 1000) ? MainAxisAlignment.center : MainAxisAlignment.end,
      children: <Widget>[
        Container(
          width: double.infinity,
          height: 10,
          color: Colors.white.withOpacity(0.8),
        ),
        SizedBox(height: 10,),
        Container(
          width: double.infinity,
          color: Colors.white.withOpacity(0.8),
          height: 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('MJ RECURSOS HUMANOS', style: TextStyle(fontWeight: FontWeight.bold ,fontSize: (_isCellphoneSize(context)) ? 24 : 44),),
              Text('Tu socio estratégico', style: TextStyle(fontSize: (_isCellphoneSize(context)) ? 20 : 24, fontStyle: FontStyle.italic),)
            ],
          ),
        ),
        SizedBox(height: 10,),
        Container(
          width: double.infinity,
          height: 10,
          color: Colors.white.withOpacity(0.8),
        ),
        (MediaQuery.of(context).size.width > 1000) ? SizedBox(height: 40,) : SizedBox(),
      ],
    );
  }

  bool _isCellphoneSize(BuildContext context){
    return (MediaQuery.of(context).size.width < 1000);
  }
}
