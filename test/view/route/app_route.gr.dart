// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:banking_app/view/atm_map/atm_map_page.dart' as _i3;
import 'package:banking_app/view/login/login_page.dart' as _i2;
import 'package:banking_app/view/top/top_page.dart' as _i1;
import 'package:flutter/material.dart' as _i5;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    TopRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.TopPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.LoginPage(),
      );
    },
    AtmMapRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.AtmMapPage(),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/login',
          fullMatch: true,
        ),
        _i4.RouteConfig(
          TopRoute.name,
          path: '/top',
        ),
        _i4.RouteConfig(
          LoginRoute.name,
          path: '/login',
        ),
        _i4.RouteConfig(
          AtmMapRoute.name,
          path: '/top/atm_map',
        ),
      ];
}

/// generated route for
/// [_i1.TopPage]
class TopRoute extends _i4.PageRouteInfo<void> {
  const TopRoute()
      : super(
          TopRoute.name,
          path: '/top',
        );

  static const String name = 'TopRoute';
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i4.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i3.AtmMapPage]
class AtmMapRoute extends _i4.PageRouteInfo<void> {
  const AtmMapRoute()
      : super(
          AtmMapRoute.name,
          path: '/top/atm_map',
        );

  static const String name = 'AtmMapRoute';
}
