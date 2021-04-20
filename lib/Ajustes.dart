import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List items;

  @override
  void initState() {
    super.initState();
    items = [
      {
        'icon': Icons.person,
        'title': 'Perfil',
        'function': () => (Profile()),
      },
      {
        'icon': Icons.qr_code,
        'title': 'QR',
        'function': () => (Profile()),
      },
      {
        'icon': Icons.admin_panel_settings,
        'title': 'Terminos y Condiciones',
        'function': () => (showAbout()),
      },
      {
        'icon': Icons.auto_fix_normal,
        'title': 'Modo Oscuro',
        'function': () => (Profile()),
      },
    ];
  }

  @override
  Widget build(BuildContext context) {
    // Remove Dark Switch if Device has Dark mode enabled
    if (MediaQuery.of(context).platformBrightness == Brightness.dark) {
      items.removeWhere((item) => item['title'] == 'Modo Oscuro');
    }

    return Scaffold(
      body: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 10),
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {

          return ListTile(
            onTap: items[index]['function'],
            leading: Icon(
              items[index]['icon'],
            ),
            title: Text(
              items[index]['title'],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider();
        },
      ),
    );
  }

  showAbout() {
    showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          title: Text(
            'Contradicciones.S.A',
          ),
          content: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum molestie tortor vitae velit rhoncus ultrices. Quisque ornare bibendum neque id cursus',
          ),
          actions: <Widget>[
            FlatButton(
              textColor: Theme.of(context).accentColor,
              onPressed: () => Navigator.pop(context),
              child: Text(
                'Cerrar',
              ),
            ),
          ],
        );
      },
    );
  }

}
