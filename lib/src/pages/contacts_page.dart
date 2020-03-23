import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mjRRHH/src/widgets/app_bar_customer.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactsPage extends StatefulWidget {
  @override
  _ContactsPageState createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustomer(),
      body: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/contact.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.black.withOpacity(0.7),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'CONTACTO',
                style: TextStyle(fontSize: 50, color: Colors.white),
                textAlign: TextAlign.center,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        _buildItems('Empresas', [
                          _buildItemsContent(
                              'assets/gmail.png',
                              'mjrhumanos@gmail.com',
                              'mailto:mjrhumanos@gmail.com'),
                        ]),
                        _buildItems('Envio de CV', [
                          _buildItemsContent(
                              'assets/gmail.png',
                              'mjempleos@gmail.com',
                              'mailto:mjempleos@gmail.com')
                        ]),
                        _buildItems('Teléfono', [
                          _buildItemsContent(
                              'assets/whatsapp.png', '11-3592-6854', '')
                        ]),
                        _buildItems('Redes Sociales', [
                          _buildItemsContent(
                              'assets/facebook.png',
                              'https://www.facebook.com/MJRRHH',
                              'https://www.facebook.com/MJRRHH'),
                          _buildItemsContent(
                              'assets/instagram.png',
                              'MJ Recursos Humanos',
                              'https://www.instagram.com/mjrecursos/?hl=es-la'),
                        ]),
                      ],
                    ),
                  ],
                ),
              ),
            ],
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
                    color: Colors.white,
                    fontSize: 17,
                    decoration: TextDecoration.underline),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildItems(String title, List<Widget> itemsContent) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: itemsContent,
          ),
        ],
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
}
