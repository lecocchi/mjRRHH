import 'package:flutter/material.dart';

class SchemeWidget extends StatefulWidget {
  final String assets;
  final String title;
  final TextStyle textStyle;
  final Widget content;


  const SchemeWidget({this.assets, this.title, @required this.content, this.textStyle});

  @override
  _SchemeWidgetState createState() => _SchemeWidgetState();
}

class _SchemeWidgetState extends State<SchemeWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(top:20),
      decoration: BoxDecoration(
        color: Colors.white,
        image: (this.widget.assets == null)
            ? null
            : DecorationImage(
                image: AssetImage(
                  this.widget.assets,
                ),
                fit: BoxFit.cover,
              ),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: (_isCellPhoneSize(context)) ? 10 : 30,
          ),
          Text(
            this.widget.title,
            style: this.widget.textStyle ?? TextStyle(
              fontFamily: 'LEPORSCHE',
              shadows: [BoxShadow(color: Colors.black, offset: Offset(1, 1), blurRadius: 3.5)],
              fontSize: (_isCellPhoneSize(context)) ? 30 : 60,
            ),
            textAlign: TextAlign.center,
          ),
          Expanded(child: this.widget.content),
        ],
      ),
    );
  }

  bool _isCellPhoneSize(BuildContext context) =>
      MediaQuery.of(context).size.width < 1000;
}
