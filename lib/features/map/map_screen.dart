import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  CameraPosition initialCameraPosition = const CameraPosition(
    target: LatLng(42.866911, 74.639732),
    zoom: 12,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Карта'),
      ),
      body: GoogleMap(
        // mapType: MapType.normal,
        // mapToolbarEnabled: false,
        // myLocationButtonEnabled: false,
        // padding: const EdgeInsets.only(bottom: 300, top: 50),
        initialCameraPosition: initialCameraPosition,
        // polygons: polygons,
        // markers: markers.toSet(),
        // myLocationEnabled: true,
        onMapCreated: (controller) {
          // _controller.complete(controller);
        },
      ),
    );
  }
}
