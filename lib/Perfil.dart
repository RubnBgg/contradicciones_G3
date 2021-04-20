import 'package:flutter/material.dart';

class Perfil extends StatefulWidget{
  @override
  _Perfil createState()=> new _Perfil();
}

class _Perfil extends State<Perfil>{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          ClipPath(
            child:Container(
              color: Colors.black.withOpacity(0.8)
            ),
            clipper:getClipper(),
          ),
          Positioned(
            width:360.0,
            top: MediaQuery.of(context).size.height/5,
            child: Column(
              children: <Widget>[
                Container(
                  width: 175.0,
                  height: 170.0,
                  decoration: BoxDecoration(
                    color:Colors.red,
                    image: DecorationImage(//IMAGEN DE API
                      image: NetworkImage('http://www.farmaciasanbernardo.mx/blog/wp-content/uploads/2018/03/dog-2347469_960_720.jpg'),
                        fit: BoxFit.cover
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(75.0)
                    ),
                    boxShadow: [
                      BoxShadow(blurRadius: 7.0, color: Colors.black)
                    ]
                  ),
                ),
                SizedBox(height:80.0),
                Text(
                  'MR.PUG',//TEXTO API
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'OpenSans',
                    color: Colors.red
                  ),
                ),
                SizedBox(height: 15.0),
                Text(
                  'Adicto a las galletitas',//TEXTO API
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'OpenSans',
                      color: Colors.black
                ),
                ),
                SizedBox(height: 25.0),
                Container(
                  height: 30.0,
                  width:95.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: Colors.redAccent,
                    color: Colors.amber,
                    elevation: 7.0,
                    child: GestureDetector(
                      onTap: (){},
                        child: Center(
                          child: Text(
                            'Editar Nombre',
                            style: TextStyle(color: Colors.white, fontFamily: 'OpenSans'),
                          ),
                        ),
                    ),
                  )
                ),
                SizedBox(height: 25.0),
                Container(
                    height: 30.0,
                    width:95.0,
                    child: Material(
                      borderRadius: BorderRadius.circular(20.0),
                      shadowColor: Colors.transparent
                      ,
                      color: Colors.redAccent,
                      elevation: 7.0,
                      child: GestureDetector(
                        onTap: (){},
                        child: Center(
                          child: Text(
                            'log out',
                            style: TextStyle(color: Colors.white, fontFamily: 'OpenSans'),
                          ),
                        ),
                      ),
                    )
                )
              ],
            )
          )
        ]
      )
    );
  }
}
class getClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size){
    var path = new Path();
    path.lineTo(0.0, size.height / 1.9);
    path.lineTo(size.width + 125,0.0);
    path.close();
    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper){
    return true;
  }
}