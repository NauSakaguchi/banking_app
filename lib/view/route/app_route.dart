import 'package:auto_route/auto_route.dart';
import 'package:banking_app/constant/route/route_path.dart';
import 'package:banking_app/view/account/close_account/close_account_page.dart';
import 'package:banking_app/view/account/open_account/open_account_page.dart';
import 'package:banking_app/view/atm_map/atm_map_page.dart';
import 'package:banking_app/view/check_deposit/check_deposit_page.dart';
import 'package:banking_app/view/information/information_page.dart';
import 'package:banking_app/view/login/login_page.dart';
import 'package:banking_app/view/payment/payment_page.dart';
import 'package:banking_app/view/sign_up/register_user_page.dart';
import 'package:banking_app/view/sign_up/sign_up.dart';
import 'package:banking_app/view/top/top_page.dart';
import 'package:banking_app/view/transaction/transaction_page.dart';
import 'package:banking_app/view/transfer/transfer_page.dart';
import 'package:banking_app/view/withdraw/withdraw_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: RoutePath.topRoute,
      page: TopPage,
    ),
    AutoRoute(
      path: RoutePath.loginRoute,
      page: LoginPage,
      initial: true,
    ),
    AutoRoute(
      path: RoutePath.atmMapRoute,
      page: AtmMapPage,
    ),
    AutoRoute(
      path: RoutePath.transferRoute,
      page: TransferPage,
    ),
    AutoRoute(
      path: RoutePath.checkDepositRoute,
      page: CheckDepositPage,
    ),
    AutoRoute(
      path: RoutePath.openAccountRoute,
      page: OpenAccountPage,
    ),
    AutoRoute(
      path: RoutePath.closeAccountRoute,
      page: CloseAccountPage,
    ),
    AutoRoute(
      path: RoutePath.transactionHistoryRoute,
      page: TransactionHistoryPage,
    ),
    AutoRoute(
      path: RoutePath.paymentRoute,
      page: PaymentPage,
    ),
    AutoRoute(
      path: RoutePath.informationRoute,
      page: InformationPage,
    ),
    AutoRoute(
      path: RoutePath.withdrawRoute,
      page: WithdrawPage,
    ),
    AutoRoute(
      path: RoutePath.signUpRoute,
      page: SignUpPage,
    ),
    AutoRoute(
      path: RoutePath.registerRoute,
      page: RegisterUserPage,
    ),
  ],
)
// extend the generated private router
class $AppRouter {}
