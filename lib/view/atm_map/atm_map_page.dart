import 'dart:async';

import 'package:banking_app/main.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AtmMapPage extends StatefulWidget {
  const AtmMapPage({Key? key}) : super(key: key);

  @override
  State<AtmMapPage> createState() => AtmMapPageState();
}

class AtmMapPageState extends State<AtmMapPage> {
  Position? currentPosition;
  late GoogleMapController _controller;
  late bool _loading;
  late LatLng _initialPosition;

  final LocationSettings locationSettings = const LocationSettings(
    accuracy: LocationAccuracy.high, //正確性:highはAndroid(0-100m),iOS(10m)
    distanceFilter: 100,
  );
  late StreamSubscription<Position> positionStream;

  @override
  void initState() {
    super.initState();
    _loading = true;

    //位置情報が許可されていない時に許可をリクエストする
    Future(() async {
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        await Geolocator.requestPermission();
      }
    });

    _getUserLocation();
  }

  void _getUserLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    setState(() {
      _initialPosition = LatLng(position.latitude, position.longitude);
      _loading = false;
      logger.d("position: ${position.latitude}, ${position.longitude}");
    });
  }

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    if (_loading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return GoogleMap(
        mapType: MapType.normal,
        myLocationEnabled: true,
        initialCameraPosition: CameraPosition(
          target: _initialPosition,
          zoom: 14.4746,
        ),
        onMapCreated: (GoogleMapController controller) {
          _controller = controller;
        },
      );
    }
    // floatingActionButton: FloatingActionButton.extended(
    //   onPressed: _goToTheLake,
    //   label: const Text('Search'),
    //   icon: const Icon(Icons.search),
    // ),
    // );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = _controller;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}
