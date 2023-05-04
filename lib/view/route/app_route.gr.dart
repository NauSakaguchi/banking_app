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
import 'package:auto_route/auto_route.dart' as _i14;
import 'package:flutter/material.dart' as _i15;

import '../account/close_account/close_account_page.dart' as _i7;
import '../account/open_account/open_account_page.dart' as _i6;
import '../atm_map/atm_map_page.dart' as _i3;
import '../check_deposit/check_deposit_page.dart' as _i5;
import '../information/information_page.dart' as _i10;
import '../login/login_page.dart' as _i2;
import '../payment/payment_page.dart' as _i9;
import '../sign_up/register_user_page.dart' as _i13;
import '../sign_up/sign_up.dart' as _i12;
import '../top/top_page.dart' as _i1;
import '../transaction/transaction_page.dart' as _i8;
import '../transfer/transfer_page.dart' as _i4;
import '../withdraw/withdraw_page.dart' as _i11;

class AppRouter extends _i14.RootStackRouter {
  AppRouter([_i15.GlobalKey<_i15.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i14.PageFactory> pagesMap = {
    TopRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.TopPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.LoginPage(),
      );
    },
    AtmMapRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.AtmMapPage(),
      );
    },
    TransferRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.TransferPage(),
      );
    },
    CheckDepositRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.CheckDepositPage(),
      );
    },
    OpenAccountRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.OpenAccountPage(),
      );
    },
    CloseAccountRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.CloseAccountPage(),
      );
    },
    TransactionHistoryRoute.name: (routeData) {
      final args = routeData.argsAs<TransactionHistoryRouteArgs>();
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i8.TransactionHistoryPage(
          key: args.key,
          accountNumber: args.accountNumber,
        ),
      );
    },
    PaymentRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.PaymentPage(),
      );
    },
    InformationRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.InformationPage(),
      );
    },
    WithdrawRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.WithdrawPage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i12.SignUpPage(),
      );
    },
    RegisterUserRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i13.RegisterUserPage(),
      );
    },
  };

  @override
  List<_i14.RouteConfig> get routes => [
        _i14.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/login',
          fullMatch: true,
        ),
        _i14.RouteConfig(
          TopRoute.name,
          path: '/top',
        ),
        _i14.RouteConfig(
          LoginRoute.name,
          path: '/login',
        ),
        _i14.RouteConfig(
          AtmMapRoute.name,
          path: '/top/atm_map',
        ),
        _i14.RouteConfig(
          TransferRoute.name,
          path: '/top/transfer',
        ),
        _i14.RouteConfig(
          CheckDepositRoute.name,
          path: '/top/check_deposit',
        ),
        _i14.RouteConfig(
          OpenAccountRoute.name,
          path: '/top/account/open',
        ),
        _i14.RouteConfig(
          CloseAccountRoute.name,
          path: '/top/account/close',
        ),
        _i14.RouteConfig(
          TransactionHistoryRoute.name,
          path: '/top/transaction',
        ),
        _i14.RouteConfig(
          PaymentRoute.name,
          path: '/top/payment',
        ),
        _i14.RouteConfig(
          InformationRoute.name,
          path: '/top/information',
        ),
        _i14.RouteConfig(
          WithdrawRoute.name,
          path: '/top/withdraw',
        ),
        _i14.RouteConfig(
          SignUpRoute.name,
          path: '/sign_up',
        ),
        _i14.RouteConfig(
          RegisterUserRoute.name,
          path: '/sign_up/register',
        ),
      ];
}

/// generated route for
/// [_i1.TopPage]
class TopRoute extends _i14.PageRouteInfo<void> {
  const TopRoute()
      : super(
          TopRoute.name,
          path: '/top',
        );

  static const String name = 'TopRoute';
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i14.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i3.AtmMapPage]
class AtmMapRoute extends _i14.PageRouteInfo<void> {
  const AtmMapRoute()
      : super(
          AtmMapRoute.name,
          path: '/top/atm_map',
        );

  static const String name = 'AtmMapRoute';
}

/// generated route for
/// [_i4.TransferPage]
class TransferRoute extends _i14.PageRouteInfo<void> {
  const TransferRoute()
      : super(
          TransferRoute.name,
          path: '/top/transfer',
        );

  static const String name = 'TransferRoute';
}

/// generated route for
/// [_i5.CheckDepositPage]
class CheckDepositRoute extends _i14.PageRouteInfo<void> {
  const CheckDepositRoute()
      : super(
          CheckDepositRoute.name,
          path: '/top/check_deposit',
        );

  static const String name = 'CheckDepositRoute';
}

/// generated route for
/// [_i6.OpenAccountPage]
class OpenAccountRoute extends _i14.PageRouteInfo<void> {
  const OpenAccountRoute()
      : super(
          OpenAccountRoute.name,
          path: '/top/account/open',
        );

  static const String name = 'OpenAccountRoute';
}

/// generated route for
/// [_i7.CloseAccountPage]
class CloseAccountRoute extends _i14.PageRouteInfo<void> {
  const CloseAccountRoute()
      : super(
          CloseAccountRoute.name,
          path: '/top/account/close',
        );

  static const String name = 'CloseAccountRoute';
}

/// generated route for
/// [_i8.TransactionHistoryPage]
class TransactionHistoryRoute
    extends _i14.PageRouteInfo<TransactionHistoryRouteArgs> {
  TransactionHistoryRoute({
    _i15.Key? key,
    required String accountNumber,
  }) : super(
          TransactionHistoryRoute.name,
          path: '/top/transaction',
          args: TransactionHistoryRouteArgs(
            key: key,
            accountNumber: accountNumber,
          ),
        );

  static const String name = 'TransactionHistoryRoute';
}

class TransactionHistoryRouteArgs {
  const TransactionHistoryRouteArgs({
    this.key,
    required this.accountNumber,
  });

  final _i15.Key? key;

  final String accountNumber;

  @override
  String toString() {
    return 'TransactionHistoryRouteArgs{key: $key, accountNumber: $accountNumber}';
  }
}

/// generated route for
/// [_i9.PaymentPage]
class PaymentRoute extends _i14.PageRouteInfo<void> {
  const PaymentRoute()
      : super(
          PaymentRoute.name,
          path: '/top/payment',
        );

  static const String name = 'PaymentRoute';
}

/// generated route for
/// [_i10.InformationPage]
class InformationRoute extends _i14.PageRouteInfo<void> {
  const InformationRoute()
      : super(
          InformationRoute.name,
          path: '/top/information',
        );

  static const String name = 'InformationRoute';
}

/// generated route for
/// [_i11.WithdrawPage]
class WithdrawRoute extends _i14.PageRouteInfo<void> {
  const WithdrawRoute()
      : super(
          WithdrawRoute.name,
          path: '/top/withdraw',
        );

  static const String name = 'WithdrawRoute';
}

/// generated route for
/// [_i12.SignUpPage]
class SignUpRoute extends _i14.PageRouteInfo<void> {
  const SignUpRoute()
      : super(
          SignUpRoute.name,
          path: '/sign_up',
        );

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i13.RegisterUserPage]
class RegisterUserRoute extends _i14.PageRouteInfo<void> {
  const RegisterUserRoute()
      : super(
          RegisterUserRoute.name,
          path: '/sign_up/register',
        );

  static const String name = 'RegisterUserRoute';
}
