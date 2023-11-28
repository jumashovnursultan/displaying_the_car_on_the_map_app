// import 'dart:isolate';
// import 'dart:ui';

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:nursultan_app/background_location_service.dart';
// import 'package:nursultan_app/data/storage/local_storage.dart';
// import 'package:background_locator_2/background_locator.dart';
// import 'package:location_permissions/location_permissions.dart';
// import 'package:location/location.dart' hide PermissionStatus;
import 'package:nursultan_app/providers/taxi_drivers.dart';

class MapScreen extends StatefulHookConsumerWidget {
  const MapScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MapScreenState();
}

class _MapScreenState extends ConsumerState<MapScreen>
    with AutomaticKeepAliveClientMixin<MapScreen> {
  BitmapDescriptor? trackIcon;
  Timer? _timer;

  void _addCustomIcon() async {
    final ByteData byteData =
        await rootBundle.load('assets/images/yandex_car2.png');
    final Uint8List uint8list = byteData.buffer.asUint8List();
    final iconData =
        BitmapDescriptor.fromBytes(uint8list, size: const Size(25, 25));
    setState(() {
      trackIcon = iconData;
    });
  }

  @override
  void initState() {
    _addCustomIcon();
    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel();

    super.dispose();
  }
  // ReceivePort port = ReceivePort();
  // late bool isOnLocation = LocalStorage().locationTrackingEnabled;
  // bool serviceEnabled = true;
  // Location location = Location();
  // LocationData? _locationData;

  // Future<void> getLocation() async {
  //   serviceEnabled = await location.serviceEnabled();
  //   // if (!_serviceEnabled) _serviceEnabled = await location.requestService();
  //   // _permissionGranted = await location.hasPermission();
  //   // if (_permissionGranted == PermissionStatus.denied) {
  //   //   _permissionGranted = await location.requestPermission();
  //   // }

  //   location.onLocationChanged.listen((event) {
  //     if (!isOnLocation) return;

  //     _locationData = event;
  //     setState(() {});
  //   });
  // }

  // @override
  // void initState() {
  //   getLocation();

  //   IsolateNameServer.registerPortWithName(
  //     port.sendPort,
  //     LocationServiceRepository.isolateName,
  //   );

  //   port.listen(
  //     (dynamic data) async {
  //       // await updateUI(data);
  //     },
  //   );
  //   initPlatformState();

  //   _checkLocationPermission().then((value) {
  //     if (value) {
  //       if (LocalStorage().locationTrackingEnabled) {
  //         startLocationService();
  //       }
  //     }
  //   });

  //   super.initState();
  // }

  // Future<void> initPlatformState() async {
  //   print('Initializing...');
  //   await BackgroundLocator.initialize();
  //   print('Initialization done');

  //   final _isRunning = await BackgroundLocator.isServiceRunning();
  //   final isRunning = _isRunning;

  //   print('Running ${isRunning.toString()}');
  // }

  // Future<bool> _checkLocationPermission() async {
  //   final access = await LocationPermissions().checkPermissionStatus();
  //   switch (access) {
  //     case PermissionStatus.unknown:
  //     case PermissionStatus.denied:
  //     case PermissionStatus.restricted:
  //       final permission = await LocationPermissions().requestPermissions(
  //         permissionLevel: LocationPermissionLevel.locationAlways,
  //       );
  //       if (permission == PermissionStatus.granted) {
  //         return true;
  //       } else {
  //         return false;
  //       }
  //       break;
  //     case PermissionStatus.granted:
  //       return true;
  //       break;
  //     default:
  //       return false;
  //       break;
  //   }
  // }

  CameraPosition initialCameraPosition = const CameraPosition(
    target: LatLng(42.866911, 74.639732),
    zoom: 12,
  );

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        _timer = Timer.periodic(const Duration(seconds: 10), (timer) async {
          ref.refresh(taxiDriversProvider);
        });
      });
    }, const []);

    final taxiDriversState = ref.watch(taxiDriversProvider);
    final List<Marker>? markers = taxiDriversState.value?.map((e) {
      return Marker(
        rotation: double.parse(e.direction ?? '0'),
        infoWindow: InfoWindow(
          title: 'Номер машины:',
          snippet: e.driver.toString(),
        ),
        onTap: () {},
        icon: trackIcon ?? BitmapDescriptor.defaultMarker,
        markerId: MarkerId('${e.latitude} ${e.longitude}'),
        position: LatLng(double.parse(e.latitude!), double.parse(e.longitude!)),
      );
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Карта'),
      ),
      body: GoogleMap(
        mapType: MapType.normal,
        mapToolbarEnabled: false,
        myLocationButtonEnabled: false,
        padding: const EdgeInsets.only(bottom: 300, top: 50),
        initialCameraPosition: initialCameraPosition,
        // polygons: polygons,
        markers: markers?.toSet() ?? <Marker>{},
        myLocationEnabled: true,
        onMapCreated: (controller) {
          // _controller.complete(controller);
        },
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
