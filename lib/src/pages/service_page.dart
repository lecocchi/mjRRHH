import 'package:flutter/material.dart';

class ServicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Center(
        child: Text('Service Page'),
      ),
    );
  }
}
