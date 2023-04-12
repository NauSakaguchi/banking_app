import 'dart:async';

import 'package:banking_app/main.dart';
import 'package:banking_app/view/atm_map/state/atm_map_page_state.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'atm_map_page_provider.g.dart';

@riverpod
class AtmMap extends _$AtmMap {
  @override
  Future<AtmMapPageState> build() async {
    Position? pos;
    try {
      pos = await determinePosition();
    } catch (e) {
      logger.e("Location Permission: $e");
    }
    // _determinePosition().then((value) {
    //   logger.d("value: $value");
    //   pos = value;
    // }).catchError((onError) {
    //   logger.e("Location Permission: $onError");
    // });
    logger.d("pos: $pos");
    return AtmMapPageState(
      currentPosition: pos,
      controller: Completer<GoogleMapController>(),
    );
  }

  Future<void> goToCurrentPos(Position pos) async {
    await state.when(
        data: (data) async {
          logger.d("goToCurrentPos: $pos");
          state = state.copyWithPrevious(state);
          data = data.copyWith(currentPosition: pos);
        },
        error: (error, stack) {
          logger.e(error);
          logger.e(stack);
        },
        loading: () {});
  }

  // Get camera position
  // If current position is null, return default camera position
  // If current position is not null, return camera position with current position
  CameraPosition getCameraPosition() {
    const CameraPosition _kGooglePlex = CameraPosition(
      target: LatLng(37.42796133580664, -122.085749655962),
      zoom: 14.4746,
    );

    state.when(
      data: (data) {
        return _kGooglePlex;
      },
      error: (error, stack) {
        return _kGooglePlex;
      },
      loading: () {
        return _kGooglePlex;
      },
    );

    throw Exception();
  }

  Future<Position> determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition();
  }
}