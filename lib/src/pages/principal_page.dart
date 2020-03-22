import 'package:flutter/material.dart';
import 'package:mjRRHH/src/widgets/logo_widget.dart';

class PrincipalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: (MediaQuery.of(context).size.width < 1000) ? MediaQuery.of(context).size.height : null,
              child: Image.asset(
                'assets/background_clean.jpg',
                fit: BoxFit.cover,
              ),
            ),
            LogoWidget(),
          ],
        ));
  }
}
