import 'package:flutter/material.dart';

class PrincipalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Image.asset(
          'assets/background.jpg',
          fit: BoxFit.cover,
        ));
  }
}
