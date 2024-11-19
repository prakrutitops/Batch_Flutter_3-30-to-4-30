import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main()
{
  runApp(MaterialApp(home:MyApp()));
}
class MyApp extends StatelessWidget
{
  late GoogleMapController mapController;
  LatLng _latLng = LatLng(22.290255, 70.775223);

  //const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: AppBar(title: Text("Google Map Example"),),
      body: GoogleMap
          (
            initialCameraPosition: CameraPosition
               (
                target: _latLng,
                zoom: 21.0
               ),

          ),
      );
  }
}
