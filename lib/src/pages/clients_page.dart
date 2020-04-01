import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mjRRHH/src/widgets/app_bar_customer.dart';
import 'package:mjRRHH/src/widgets/drawer_custom.dart';
import 'package:mjRRHH/src/widgets/scheme_widget.dart';

class ClientsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SchemeWidget(
      title: 'CLIENTES',
      content: (_isCellPhoneSize(context))
          ? Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Image.asset('assets/client_argontech.png', width: 130),
                      _buildClient('assets/client_naranja.png', 150, 120),
                    ],
                  ),
                  _buildLogoNasa(context),
                  _buildClient('assets/client_onep.png', 250, 120),
                  _buildClient('assets/client_vn.png', 250, 80),
                ],
              ),
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.asset('assets/client_argontech.png'),
                    SizedBox(
                      width: 40,
                    ),
                    _buildClient('assets/client_naranja.png', 220, 120),
                    SizedBox(
                      width: 40,
                    ),
                    _buildLogoNasa(context),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    _buildClient('assets/client_onep.png', 300, 150),
                    SizedBox(
                      width: 40,
                    ),
                    _buildClient('assets/client_vn.png', 350, 200),
                  ],
                ),
              ],
            ),
    );
  }

  Container _buildClient(String assetName, double width, double height) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
//        color: Colors.red,
        image:
            DecorationImage(image: AssetImage(assetName), fit: BoxFit.fitWidth),
      ),
    );
  }

  Widget _buildLogoNasa(BuildContext context) {
    return Container(
      width: 200,
      height: (_isCellPhoneSize(context)) ? 100 : 130,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset('assets/client_nasa.png',
              width: (_isCellPhoneSize(context)) ? 130 : 180),
          SizedBox(
            height: 5,
          ),
          Text(
            'NUCLEOELÉCTRICA \nARGENTINA S.A.',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: (_isCellPhoneSize(context)) ? 15 : 16),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }

  bool _isCellPhoneSize(BuildContext context) =>
      MediaQuery.of(context).size.width < 1000;
}
