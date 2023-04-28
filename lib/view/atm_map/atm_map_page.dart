import 'dart:async';
import 'dart:convert';

import 'package:banking_app/constant/string/globar_string.dart';
import 'package:banking_app/constant/url/google_map_string.dart';
import 'package:banking_app/main.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;

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
  Set<Marker> _markers = {};
  String googleApiKey = 'AIzaSyBWH1DG-n0gkO4bHogHsEoJHuQJWklvEYA';

  final LocationSettings locationSettings = const LocationSettings(
    accuracy: LocationAccuracy.high, //正確性:highはAndroid(0-100m),iOS(10m)
    distanceFilter: 100,
  );

  // Unimplemented:
  // late StreamSubscription<Position> positionStream;

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

    _getUserLocation().then((value) {
      logger.d(
          "position: ${_initialPosition.latitude}, ${_initialPosition.longitude}");
      _getATMPlaces(value);
    });
  }

  Future<void> _getATMPlaces(LatLng latLng) async {
    final uri = Uri.https(GoogleMapString.url, GoogleMapString.header, {
      'location': '${latLng.latitude},${latLng.longitude}',
      'key': GoogleMapString.placeApi,
      'radius': GoogleMapString.radius,
      'language': GlobalString.GlobalLang,
      'keyword': GoogleMapString.keyword,
    });

    logger.d("uri: $uri");

    final response = await http.get(uri);

    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body);
      var results = jsonResponse['results'];

      setState(() {
        _markers.clear();
        for (var atm in results) {
          LatLng atmLocation = LatLng(atm['geometry']['location']['lat'],
              atm['geometry']['location']['lng']);
          _markers.add(Marker(
              markerId: MarkerId(atm['place_id']),
              position: atmLocation,
              infoWindow:
                  InfoWindow(title: atm['name'], snippet: atm['vicinity'])));
        }
      });
    } else {
      throw Exception('Failed to load ATMs');
    }

    setState(() {
      _loading = false;
    });
  }

  Future<LatLng> _getUserLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    setState(() {
      _initialPosition = LatLng(position.latitude, position.longitude);
    });

    return LatLng(position.latitude, position.longitude);
  }

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        title: const Text('ATM Map'),
      ),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : Stack(
              children: [
                GoogleMap(
                  mapType: MapType.normal,
                  markers: _markers,
                  myLocationEnabled: true,
                  initialCameraPosition: CameraPosition(
                    target: _initialPosition,
                    zoom: 14.4746,
                  ),
                  onMapCreated: (controller) {
                    _controller = controller;
                  },
                ),

                // search button with text and icon
                Align(
                  alignment: Alignment.topCenter,
                  child: ElevatedButton(
                    onPressed: () {
                      _getUserLocation().then((value) {
                        _getATMPlaces(value);
                      });
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.search,
                          color: colorScheme.onPrimary,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Search Nearby ATM',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: colorScheme.onPrimary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
