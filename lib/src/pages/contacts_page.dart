import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mjRRHH/src/widgets/scheme_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactsPage extends StatefulWidget {
  @override
  _ContactsPageState createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  @override
  Widget build(BuildContext context) {
    return SchemeWidget(
      assets: 'assets/contact.png',
      title: 'CONTACTO',
      textStyle: TextStyle(
        color: Colors.white,
        fontFamily: 'LEPORSCHE',
        shadows: [BoxShadow(color: Colors.white, offset: Offset(1, 1), blurRadius: 3.5)],
        fontSize: (_isCellPhoneSize(context)) ? 30 : 60,
      ),
      content: (_isCellPhoneSize(context))
          ? Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                _buildItems('Empresas', [
                  _buildItemsContent('assets/gmail.png', 'mjrhumanos@gmail.com',
                      'mailto:mjrhumanos@gmail.com'),
                ]),
                _buildItems('Envio de CV', [
                  _buildItemsContent('assets/gmail.png', 'mjempleos@gmail.com',
                      'mailto:mjempleos@gmail.com')
                ]),
                _buildItems('Teléfono', [
                  _buildItemsContent('assets/whatsapp.png', '11-3592-6854', '')
                ]),
                _buildItems('Redes Sociales', [
                  _buildItemsContent('assets/facebook.png',
                      'facebook.com/MJRRHH', 'https://www.facebook.com/MJRRHH'),
                  _buildItemsContent('assets/instagram.png', 'mjrecursos',
                      'https://www.instagram.com/mjrecursos/?hl=es-la'),
                ]),
              ],
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Wrap(
                  alignment: WrapAlignment.center,
                  children: <Widget>[
                    _buildItems('Empresas', [
                      _buildItemsContent(
                          'assets/gmail.png',
                          'mjrhumanos@gmail.com',
                          'mailto:mjrhumanos@gmail.com'),
                    ]),
                    _buildItems('Envio de CV', [
                      _buildItemsContent('assets/gmail.png',
                          'mjempleos@gmail.com', 'mailto:mjempleos@gmail.com')
                    ]),
                    _buildItems('Teléfono', [
                      _buildItemsContent(
                          'assets/whatsapp.png', '11-3592-6854', '')
                    ]),
                    _buildItems('Redes Sociales', [
                      _buildItemsContent(
                          'assets/facebook.png',
                          'facebook.com/MJRRHH',
                          'https://www.facebook.com/MJRRHH'),
                      _buildItemsContent('assets/instagram.png', 'mjrecursos',
                          'https://www.instagram.com/mjrecursos/?hl=es-la'),
                    ]),
                  ],
                ),
              ],
            ),
    );
  }

  Widget _buildItems(String title, List<Widget> itemsContent) {
    return Container(
      width: 320,
      height: (_isCellPhoneSize(context)) ? null : 150,
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              fontFamily: 'yugothic',
              fontSize: (_isCellPhoneSize(context)) ? 18 : 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: itemsContent,
          ),
        ],
      ),
    );
  }

  Widget _buildItemsContent(String path, String content, String url) {
    return GestureDetector(
      onTap: () {
        _launchURL(url);
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              path,
              width: 30,
            ),
            SizedBox(
              width: 5,
            ),
            MouseRegion(
              child: Text(
                content,
                style: TextStyle(
                  fontFamily: 'yugothic',
                  fontSize: 17,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  bool _isCellPhoneSize(BuildContext context) =>
      MediaQuery.of(context).size.width < 1000;
}
