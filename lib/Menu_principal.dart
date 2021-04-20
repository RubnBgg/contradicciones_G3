import 'package:contradicciones/Log_in.dart';
import 'package:contradicciones/Mapa.dart';
import 'package:contradicciones/Perfil.dart';
import 'package:flutter/material.dart';
import 'package:contradicciones/Ajustes.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';


class Menu extends StatefulWidget {
  State<StatefulWidget> createState() => _MenuState();
}
class _MenuState extends State<Menu>{
  int _indexactual = 0;
  final List<Widget> _children = [
    Perfil(),
    Fondo(),
    Fondo(),
    Mapa(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:_children[_indexactual],
        bottomNavigationBar: ConvexAppBar(
          color: Colors.white,
          backgroundColor: Colors.red,
          items: [

            TabItem(icon: Icons.person_outlined, title: 'Perfil'),
            TabItem(icon: Icons.message, title: 'Blog'),
            TabItem(icon: Icons.home, title: 'Menú'),
            TabItem(icon: Icons.map, title: 'Mapa'),
            TabItem(icon: Icons.settings, title: 'Ajustes'),
          ],

          initialActiveIndex: 2,//optional, default as 0
          onTap: onTabTapped,
        ),



      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () =>  Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => login(),
            )));
          },
        ),
        backgroundColor: Colors.red,

        title: Text("CONTRADICCIONES"),
        centerTitle: true,
        actions: <Widget>[
          Image.asset(
              "assets/Contradicc.png"
          ),
        ],
      ),
    );
  }
  void onTabTapped(int index){
    setState(() {
    _indexactual = index;
  });
  }
}

class Fondo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/fondo.jpg"), fit: BoxFit.cover),
      ),
      child: Center(child: Image.asset("assets/Contradicc.png")),
    );
  }
}