import 'package:flutter/material.dart';
import 'package:mjRRHH/src/pages/we_page.dart';
import 'package:mjRRHH/src/pages/home_page.dart';
import 'package:mjRRHH/src/pages/service_page.dart';
import 'package:mjRRHH/src/widgets/app_bar_customer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MJ RRHH',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}
