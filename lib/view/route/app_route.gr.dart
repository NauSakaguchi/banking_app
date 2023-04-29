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
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/material.dart' as _i12;

import '../account/close_account/close_account_page.dart' as _i7;
import '../account/open_account/open_account_page.dart' as _i6;
import '../atm_map/atm_map_page.dart' as _i3;
import '../check_deposit/check_deposit_page.dart' as _i5;
import '../information_page.dart' as _i10;
import '../login/login_page.dart' as _i2;
import '../payment/payment_page.dart' as _i9;
import '../top/top_page.dart' as _i1;
import '../transaction/transaction_page.dart' as _i8;
import '../transfer/transfer_page.dart' as _i4;

class AppRouter extends _i11.RootStackRouter {
  AppRouter([_i12.GlobalKey<_i12.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    TopRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.TopPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.LoginPage(),
      );
    },
    AtmMapRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.AtmMapPage(),
      );
    },
    TransferRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.TransferPage(),
      );
    },
    CheckDepositRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.CheckDepositPage(),
      );
    },
    OpenAccountRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.OpenAccountPage(),
      );
    },
    CloseAccountRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.CloseAccountPage(),
      );
    },
    TransactionHistoryRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.TransactionHistoryPage(),
      );
    },
    PaymentRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.PaymentPage(),
      );
    },
    InformationRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.InformationPage(),
      );
    },
  };

  @override
  List<_i11.RouteConfig> get routes => [
        _i11.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/login',
          fullMatch: true,
        ),
        _i11.RouteConfig(
          TopRoute.name,
          path: '/top',
        ),
        _i11.RouteConfig(
          LoginRoute.name,
          path: '/login',
        ),
        _i11.RouteConfig(
          AtmMapRoute.name,
          path: '/top/atm_map',
        ),
        _i11.RouteConfig(
          TransferRoute.name,
          path: '/top/transfer',
        ),
        _i11.RouteConfig(
          CheckDepositRoute.name,
          path: '/top/check_deposit',
        ),
        _i11.RouteConfig(
          OpenAccountRoute.name,
          path: '/top/account/open',
        ),
        _i11.RouteConfig(
          CloseAccountRoute.name,
          path: '/top/account/close',
        ),
        _i11.RouteConfig(
          TransactionHistoryRoute.name,
          path: '/top/transaction',
        ),
        _i11.RouteConfig(
          PaymentRoute.name,
          path: '/top/payment',
        ),
        _i11.RouteConfig(
          InformationRoute.name,
          path: '/top/information',
        ),
      ];
}

/// generated route for
/// [_i1.TopPage]
class TopRoute extends _i11.PageRouteInfo<void> {
  const TopRoute()
      : super(
          TopRoute.name,
          path: '/top',
        );

  static const String name = 'TopRoute';
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i11.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i3.AtmMapPage]
class AtmMapRoute extends _i11.PageRouteInfo<void> {
  const AtmMapRoute()
      : super(
          AtmMapRoute.name,
          path: '/top/atm_map',
        );

  static const String name = 'AtmMapRoute';
}

/// generated route for
/// [_i4.TransferPage]
class TransferRoute extends _i11.PageRouteInfo<void> {
  const TransferRoute()
      : super(
          TransferRoute.name,
          path: '/top/transfer',
        );

  static const String name = 'TransferRoute';
}

/// generated route for
/// [_i5.CheckDepositPage]
class CheckDepositRoute extends _i11.PageRouteInfo<void> {
  const CheckDepositRoute()
      : super(
          CheckDepositRoute.name,
          path: '/top/check_deposit',
        );

  static const String name = 'CheckDepositRoute';
}

/// generated route for
/// [_i6.OpenAccountPage]
class OpenAccountRoute extends _i11.PageRouteInfo<void> {
  const OpenAccountRoute()
      : super(
          OpenAccountRoute.name,
          path: '/top/account/open',
        );

  static const String name = 'OpenAccountRoute';
}

/// generated route for
/// [_i7.CloseAccountPage]
class CloseAccountRoute extends _i11.PageRouteInfo<void> {
  const CloseAccountRoute()
      : super(
          CloseAccountRoute.name,
          path: '/top/account/close',
        );

  static const String name = 'CloseAccountRoute';
}

/// generated route for
/// [_i8.TransactionHistoryPage]
class TransactionHistoryRoute extends _i11.PageRouteInfo<void> {
  const TransactionHistoryRoute()
      : super(
          TransactionHistoryRoute.name,
          path: '/top/transaction',
        );

  static const String name = 'TransactionHistoryRoute';
}

/// generated route for
/// [_i9.PaymentPage]
class PaymentRoute extends _i11.PageRouteInfo<void> {
  const PaymentRoute()
      : super(
          PaymentRoute.name,
          path: '/top/payment',
        );

  static const String name = 'PaymentRoute';
}

/// generated route for
/// [_i10.InformationPage]
class InformationRoute extends _i11.PageRouteInfo<void> {
  const InformationRoute()
      : super(
          InformationRoute.name,
          path: '/top/information',
        );

  static const String name = 'InformationRoute';
}
