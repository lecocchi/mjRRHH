import 'package:flutter/material.dart';

class AppBarCustomer extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: AppBar(
        backgroundColor: Colors.blueGrey,
        leading:
            (MediaQuery.of(context).size.width > 1000) ? _buildLogo() : null,
        actions: (MediaQuery.of(context).size.width > 1000)
            ? <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        _fieldMenu(context, 'Inicio', '/home'),
                        _fieldMenu(context, 'Nosotros', '/we'),
                        _fieldMenu(
                            context, 'Nuestros Principios', '/principle'),
                        _fieldMenu(context, 'Servicios', '/service'),
                        _fieldMenu(context, 'Clientes', '/client'),
                        _fieldMenu(context, 'Contacto', '/contact'),
                      ],
                    ),
                  ],
                )
              ]
            : null,
      ),
    );
  }

  Widget _fieldMenu(BuildContext context, String name, String routeName) {
    return FlatButton(
        onPressed: () {
          Navigator.pushNamed(context, routeName);
        },
        child: Text(
          name,
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ));
  }

  Widget _buildLogo() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.grey,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'MJ',
            style: TextStyle(color: Colors.white, fontSize: 22),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
