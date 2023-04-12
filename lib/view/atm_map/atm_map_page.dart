import 'dart:async';

import 'package:banking_app/main.dart';
import 'package:banking_app/view/atm_map/state/atm_map_page_provider.dart';
import 'package:banking_app/view/atm_map/state/atm_map_page_state.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AtmMapPage extends ConsumerWidget {
  const AtmMapPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mapState = ref.watch(atmMapProvider);
    final store = ref.read(atmMapProvider.notifier);

    return Scaffold(
      body: mapState.when(
        data: (state) {
          logger.d('map state updated');
          logger.d('map state: ${state.currentPosition}');
          if (state.currentPosition == null) {
            return mapWithoutLocation(context, state);
          } else {
            final lat = state.currentPosition!.latitude;
            final lng = state.currentPosition!.longitude;
            CameraPosition cameraPosition = CameraPosition(
              target: LatLng(lat, lng),
              zoom: 14.4746,
            );
            logger.d("camera pos: $cameraPosition");
            return mapWithLocation(context, state, cameraPosition);
          }
        },
        error: (error, stack) {
          logger.e(error);
          logger.e(stack);
          return defaultMap(context);
        },
        loading: () {
          logger.d('map state loading...');
          return defaultMap(context);
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          logger.d("pushed google map floatingActionButton");
          try {
            final pos = await store.determinePosition();
            store.goToCurrentPos(pos);
          } catch (e) {
            logger.e("Location Permission: $e");
          }
        },
        label: const Text('Search'),
        icon: const Icon(Icons.search),
      ),
    );
  }

  Widget mapWithLocation(BuildContext context, AtmMapPageState atmState,
      CameraPosition currentPosition) {
    Completer<GoogleMapController> _controller = atmState.controller!;
    logger.d("mapWithLocation: $currentPosition");

    return GoogleMap(
      mapType: MapType.normal,
      myLocationButtonEnabled: false,
      initialCameraPosition: currentPosition,
      onMapCreated: (controller) {
        _controller.complete(controller);
      },
    );
  }

  Widget mapWithoutLocation(BuildContext context, AtmMapPageState atmState) {
    const CameraPosition kGooglePlex = CameraPosition(
      target: LatLng(37.42796133580664, -122.085749655962),
      zoom: 14.4746,
    );

    return mapWithLocation(context, atmState, kGooglePlex);
  }

  Widget defaultMap(BuildContext context) {
    Completer<GoogleMapController> _controller = Completer();
    const CameraPosition _kGooglePlex = CameraPosition(
      target: LatLng(37.42796133580664, -122.085749655962),
      zoom: 14.4746,
    );

    return GoogleMap(
      mapType: MapType.normal,
      initialCameraPosition: _kGooglePlex,
      onMapCreated: (controller) {
        _controller.complete(controller);
      },
    );
  }
}
