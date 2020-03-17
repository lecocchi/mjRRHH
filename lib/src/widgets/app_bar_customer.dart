import 'package:flutter/material.dart';

class AppBarCustomer extends StatelessWidget implements PreferredSizeWidget{
  const AppBarCustomer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}