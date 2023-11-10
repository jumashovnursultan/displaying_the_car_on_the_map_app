import 'dart:isolate';
import 'dart:math';
import 'dart:ui';

import 'package:background_locator_2/background_locator.dart';
import 'package:background_locator_2/location_dto.dart';
import 'package:background_locator_2/settings/android_settings.dart';
import 'package:background_locator_2/settings/ios_settings.dart';
import 'package:background_locator_2/settings/locator_settings.dart';
import 'package:flutter/material.dart';
import 'package:nursultan_app/data/client/client.dart';
import 'package:nursultan_app/data/repositories/user_repo.dart';
import 'package:nursultan_app/data/storage/local_storage.dart';

Future<void> startLocationService() async {
  await BackgroundLocator.registerLocationUpdate(
    LocationCallbackHandler.callback,
    initCallback: LocationCallbackHandler.initCallback,
    initDataCallback: {},
    disposeCallback: LocationCallbackHandler.disposeCallback,
    autoStop: false,
    iosSettings: const IOSSettings(
      accuracy: LocationAccuracy.NAVIGATION,
      distanceFilter: 0,
    ),
    androidSettings: const AndroidSettings(
      accuracy: LocationAccuracy.NAVIGATION,
      interval: 5,
      distanceFilter: 0,
      androidNotificationSettings: AndroidNotificationSettings(
        notificationChannelName: 'Location tracking',
        notificationTitle: 'Start Location Tracking',
        notificationMsg: 'Track location in background',
        notificationBigMsg: 'Background location is on to keep the '
            'app up-tp-date with your location. This is required '
            'for main features to work properly when the app is not running.',
        notificationIcon: '',
        notificationIconColor: Colors.grey,
        notificationTapCallback: LocationCallbackHandler.notificationCallback,
      ),
    ),
  );
}

class LocationCallbackHandler {
  @pragma('vm:entry-point')
  static Future<void> initCallback(Map<dynamic, dynamic> params) async {
    print('***initCallback');
    LocationServiceRepository myLocationCallbackRepository =
        LocationServiceRepository();
    await myLocationCallbackRepository.init(params);
  }

  static Future<void> disposeCallback() async {
    print('***disposeCallback');
    LocationServiceRepository myLocationCallbackRepository =
        LocationServiceRepository();
    await myLocationCallbackRepository.dispose();
  }

  @pragma('vm:entry-point')
  static Future<void> callback(LocationDto locationDto) async {
    print('***callback');
    print(locationDto);
    await LocalStorage.init();
    if (LocalStorage().locationTrackingEnabled) {
      LocationServiceRepository myLocationCallbackRepository =
          LocationServiceRepository();
      await myLocationCallbackRepository.callback(locationDto);
    }
  }

  @pragma('vm:entry-point')
  static Future<void> notificationCallback() async {
    print('***notificationCallback');
  }
}

class LocationServiceRepository {
  static LocationServiceRepository _instance = LocationServiceRepository._();

  LocationServiceRepository._();

  factory LocationServiceRepository() {
    return _instance;
  }

  static const String isolateName = 'LocatorIsolate';

  int _count = -1;

  Future<void> init(Map<dynamic, dynamic> params) async {
    //TODO change logs
    print("***********Init callback handler");
    if (params.containsKey('countInit')) {
      dynamic tmpCount = params['countInit'];
      if (tmpCount is double) {
        _count = tmpCount.toInt();
      } else if (tmpCount is String) {
        _count = int.parse(tmpCount);
      } else if (tmpCount is int) {
        _count = tmpCount;
      } else {
        _count = -2;
      }
    } else {
      _count = 0;
    }
    print("$_count");
    await setLogLabel("start");
    final SendPort? send = IsolateNameServer.lookupPortByName(isolateName);
    send?.send(null);
  }

  Future<void> dispose() async {
    print("***********Dispose callback handler");
    print("$_count");
    await setLogLabel("end");
  }

  Future<void> callback(LocationDto locationDto) async {
    // print('$_count location in dart: ${locationDto.toString()}');
    // await _log(formatLog(locationDto));
    final lastLocation = LocalStorage().lastLocation;
    if (lastLocation != null &&
        lastLocation['latitude'] == locationDto.latitude &&
        lastLocation['longitude'] == locationDto.longitude) {
      return;
    }

    LocalStorage().lastLocation = {
      'latitude': locationDto.latitude,
      'longitude': locationDto.longitude,
    };

    if (LocalStorage().locationTrackingEnabled) {
      LocalStorage().lastData = DateTime.now().toString();
      print(LocalStorage().lastData);
      final res = await UserAPIRepo(
        client: ApiClient(
          '',
          storage: LocalStorage(),
        ),
      ).sendLocation();

      print(
          " latitude: ${locationDto.latitude}, longitude: ${locationDto.longitude}");
    }
  }

  static Future<void> setLogLabel(String label) async {
    final date = DateTime.now();

    // _log(label);
  }

  // static Future<void> _log(String label) async {
  //   try {
  //     final dio = Dio();
  //     dio.get(
  //       'http://192.168.89.30:8080?log=$label',
  //     );
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  static Future<void> setLogPosition(int count, LocationDto data) async {
    final date = DateTime.now();
    // _log(
    //     '$count : ${formatDateLog(date)} --> ${formatLog(data)} --- isMocked: ${data.isMocked}\n');
  }

  static double dp(double val, int places) {
    final mod = pow(10.0, places);
    return ((val * mod).round().toDouble() / mod);
  }

  static String formatDateLog(DateTime date) {
    return date.hour.toString() +
        ":" +
        date.minute.toString() +
        ":" +
        date.second.toString();
  }

  static String formatLog(LocationDto locationDto) {
    return dp(locationDto.latitude, 4).toString() +
        " " +
        dp(locationDto.longitude, 4).toString();
  }
}
