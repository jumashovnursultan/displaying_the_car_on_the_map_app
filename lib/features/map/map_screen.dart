import 'dart:isolate';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:nursultan_app/background_location_service.dart';
import 'package:nursultan_app/data/storage/local_storage.dart';
import 'package:background_locator_2/background_locator.dart';
import 'package:location_permissions/location_permissions.dart';
import 'package:location/location.dart' hide PermissionStatus;

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  ReceivePort port = ReceivePort();
  late bool isOnLocation = LocalStorage().locationTrackingEnabled;
  bool serviceEnabled = true;
  Location location = Location();
  LocationData? _locationData;

  Future<void> getLocation() async {
    serviceEnabled = await location.serviceEnabled();
    // if (!_serviceEnabled) _serviceEnabled = await location.requestService();
    // _permissionGranted = await location.hasPermission();
    // if (_permissionGranted == PermissionStatus.denied) {
    //   _permissionGranted = await location.requestPermission();
    // }

    location.onLocationChanged.listen((event) {
      if (!isOnLocation) return;

      _locationData = event;
      setState(() {});
    });
  }

  @override
  void initState() {
    getLocation();

    IsolateNameServer.registerPortWithName(
      port.sendPort,
      LocationServiceRepository.isolateName,
    );

    port.listen(
      (dynamic data) async {
        // await updateUI(data);
      },
    );
    initPlatformState();

    _checkLocationPermission().then((value) {
      if (value) {
        if (LocalStorage().locationTrackingEnabled) {
          startLocationService();
        }
      }
    });

    super.initState();
  }

  Future<void> initPlatformState() async {
    print('Initializing...');
    await BackgroundLocator.initialize();
    print('Initialization done');

    final _isRunning = await BackgroundLocator.isServiceRunning();
    final isRunning = _isRunning;

    print('Running ${isRunning.toString()}');
  }

  Future<bool> _checkLocationPermission() async {
    final access = await LocationPermissions().checkPermissionStatus();
    switch (access) {
      case PermissionStatus.unknown:
      case PermissionStatus.denied:
      case PermissionStatus.restricted:
        final permission = await LocationPermissions().requestPermissions(
          permissionLevel: LocationPermissionLevel.locationAlways,
        );
        if (permission == PermissionStatus.granted) {
          return true;
        } else {
          return false;
        }
        break;
      case PermissionStatus.granted:
        return true;
        break;
      default:
        return false;
        break;
    }
  }

  CameraPosition initialCameraPosition = const CameraPosition(
    target: LatLng(42.866911, 74.639732),
    zoom: 12,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Карта'),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  isOnLocation = !isOnLocation;
                  setState(() {});
                  LocalStorage().lastLocation = null;
                  if (isOnLocation) {
                    LocalStorage().locationTrackingEnabled = true;
                    startLocationService();
                  } else {
                    LocalStorage().locationTrackingEnabled = false;
                    BackgroundLocator.unRegisterLocationUpdate();
                  }
                },
                icon: const Icon(Icons.ios_share),
              ),
              const SizedBox(width: 5),
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isOnLocation ? Colors.green : Colors.grey,
                ),
              ),
              const SizedBox(width: 10),
            ],
          ),
        ],
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
