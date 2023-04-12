import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'atm_map_page_state.freezed.dart';

// State for atm map page
// This is a freezed class
// https://pub.dev/packages/freezed
@freezed
class AtmMapPageState with _$AtmMapPageState {
  // username is default value
  // currentPosition is null
  const factory AtmMapPageState({
    Completer<GoogleMapController>? controller,
    @Default('') String username,
    Position? currentPosition,
  }) = _AtmMapPageState;
}
