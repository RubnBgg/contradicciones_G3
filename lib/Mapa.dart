import 'package:flutter/material.dart';
import 'package:latlng/latlng.dart'as latLng;
import 'package:contradicciones/Menu_principal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_map/flutter_map.dart';

class Mapa extends StatelessWidget {
  Widget build(BuildContext context) {

    return FlutterMap(
      options: MapOptions(
        zoom: 13.0,
      ),
      layers: [
        TileLayerOptions(
            urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
            subdomains: ['a', 'b', 'c']
        ),
        MarkerLayerOptions(
          markers: [
            Marker(
              width: 80.0,
              height: 80.0,
            ),
          ],
        ),
      ],
    );

  }
}