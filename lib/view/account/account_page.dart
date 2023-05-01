import 'package:auto_route/auto_route.dart';
import 'package:banking_app/constant/route/route_path.dart';
import 'package:banking_app/core/ui_core/cent_balance_formatter.dart';
import 'package:banking_app/main.dart';
import 'package:banking_app/model/account/account.dart';
import 'package:banking_app/view/account/state/account_page_provider.dart';
import 'package:banking_app/view/route/app_route.gr.dart';
import 'package:banking_app/view_model/user_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loader_overlay/loader_overlay.dart';

class AccountDetailItem {
  final String title;
  final String value;

  AccountDetailItem({
    required this.title,
    required this.value,
  });
}

class AccountPage extends ConsumerWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    const double padding = 20;
    final double screenWidth = MediaQuery.of(context).size.width;

    final userState = ref.watch(userInfoProvider);
    final accounts =
        ref.watch(userInfoProvider.select((value) => value.accounts));
    final initialized =
        ref.watch(accountItemsProvider.select((value) => value.initialized));
    final provider = ref.watch(accountItemsProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
              Navigator.pop(context);
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      backgroundColor: colorScheme.background,
      body: initialized
          ? LoaderOverlay(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: padding,
                  right: padding,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          "Menu",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                      MenuWidget(
                        width: screenWidth - padding * 2,
                        colorScheme: colorScheme,
                        renewState:
                            ref.read(userInfoProvider.notifier).fetchUser,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text(
                          "${userState.firstName} ${userState.lastName}'s Accounts",
                          style: const TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ),
                      for (var account in accounts) ...{
                        _buildAccountItem(
                          context,
                          colorScheme: colorScheme,
                          account: account,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      }
                    ],
                  ),
                ),
              ),
            )
          : const Center(child: CircularProgressIndicator()),
    );
  }

  Widget _buildAccountItem(
    BuildContext context, {
    required ColorScheme colorScheme,
    required Account account,
  }) {
    final _accountDetailItems = [
      AccountDetailItem(title: "Account number", value: account.accountNumber),
      AccountDetailItem(title: "Routing number", value: account.routingNumber),
      AccountDetailItem(title: "Account type", value: account.accountType),
    ];
    return Container(
      decoration: BoxDecoration(
        color: colorScheme.surface,
        border: Border.all(color: colorScheme.onPrimaryContainer),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                CentBalanceFormatter.toDollarString(account.centBalance),
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Account details",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          // map AccountDetailItem to Row Widget
          for (final item in _accountDetailItems) ...{
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(item.title),
                Text(
                  item.value,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Divider(),
          },

          // to transaction page
          OutlinedButton(
            onPressed: () {
              context.router.push(
                TransactionHistoryRoute(accountNumber: account.accountNumber),
              );
            },
            child: const Text("See all transactions"),
          ),
        ],
      ),
    );
  }
}

class MenuWidget extends StatelessWidget {
  final double width;
  final double itemCount = 4;
  final ColorScheme colorScheme;
  final Future<void> Function() renewState;
  const MenuWidget({
    Key? key,
    required this.width,
    required this.colorScheme,
    required this.renewState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // round corner
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: colorScheme.onPrimaryContainer),
        color: colorScheme.surface,
      ),
      width: double.infinity,
      child: Wrap(
        alignment: WrapAlignment.center,
        children: [
          _buildMenuItem(
            context,
            icon: Icons.currency_exchange_outlined,
            title: "Transfer\n",
            path: RoutePath.transferRoute,
            renewState: renewState,
          ),
          _buildMenuItem(
            context,
            icon: Icons.payments_outlined,
            title: "Check\nDeposit",
            path: RoutePath.checkDepositRoute,
            renewState: renewState,
          ),
          _buildMenuItem(
            context,
            icon: Icons.account_balance_wallet_outlined,
            title: "Open\nAccount",
            path: RoutePath.openAccountRoute,
            renewState: renewState,
          ),
          _buildMenuItem(
            context,
            icon: Icons.person_off_outlined,
            title: "Close\nAccount",
            path: RoutePath.closeAccountRoute,
            renewState: renewState,
          ),
          _buildMenuItem(
            context,
            icon: Icons.payment_outlined,
            title: "Payment\n",
            path: RoutePath.paymentRoute,
            renewState: renewState,
          ),
          _buildMenuItem(
            context,
            icon: Icons.account_balance_outlined,
            title: "Withdraw\n",
            path: RoutePath.withdrawRoute,
            renewState: renewState,
          ),
          _buildMenuItem(
            context,
            icon: Icons.info_outline,
            title: "Information\n",
            path: RoutePath.informationRoute,
            renewState: renewState,
          ),
          // dummy item
          SizedBox(
            width: width / itemCount - 1,
            height: width / itemCount - 1,
          ),
        ],
      ),
    );
  }

  _buildMenuItem(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String path,
    required Future<void> Function() renewState,
  }) {
    double itemWidth = width / itemCount - 1;
    return MaterialButton(
      padding: const EdgeInsets.all(0),
      // round corner
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      minWidth: 0,
      onPressed: () async {
        logger.d("path: $path");
        context.loaderOverlay.show();
        await context.router.pushNamed(path);
        renewState().then((_) => context.loaderOverlay.hide());
      },
      child: Container(
        // color: Colors.red,
        width: itemWidth,
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(height: 8),
            Icon(
              icon,
              size: itemWidth / 3,
              color: colorScheme.primary,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 11,
                color: colorScheme.onBackground,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
