import 'package:flutter/material.dart';
import 'package:mjRRHH/src/widgets/app_bar_customer.dart';

class ClientsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustomer(),
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Text(
              'Clientes',
              style: TextStyle(fontSize: 50),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 70,
            ),
            Image.asset(
              'assets/clientes.png',
              width: 600,
            ),
          ],
        ),
      ),
    );
  }
}
