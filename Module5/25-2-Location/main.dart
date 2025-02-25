import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main()
{
  runApp(MaterialApp(home:MyApp()));
}
class MyApp extends StatefulWidget
{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{

  late GoogleMapController mapController;
  LatLng _latLng = LatLng(22.290403893167973, 70.77542726381948);
 // LatLng _latLng = LatLng(a, b);

  //
  // Future<void> _getCurrentLocation() async {
  //   // Check for location permission
  //   LocationPermission permission = await Geolocator.checkPermission();
  //   if (permission == LocationPermission.denied) {
  //     permission = await Geolocator.requestPermission();
  //   }
  //
  //   if (permission == LocationPermission.deniedForever) {
  //     // Permissions are permanently denied, you need to open settings
  //     setState(() {
  //       _currentLocation = "Location permissions are permanently denied.";
  //     });
  //   } else {
  //     // Get the current location
  //     Position position = await Geolocator.getCurrentPosition(
  //       desiredAccuracy: LocationAccuracy.high,
  //     );
  //
  //     setState(() {
  //       _currentLocation =
  //       "Lat: ${position.latitude}, Lng: ${position.longitude}";
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Google Map Example"),),
        body: GoogleMap
          (
            initialCameraPosition:
            CameraPosition
            (
              target: _latLng,
              zoom: 21.0
            ),

          ),
      );
  }
}
