import 'package:auto_route/auto_route.dart';
import 'package:banking_app/constant/route/route_path.dart';
import 'package:banking_app/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AccountDetailItem {
  final String title;
  final String value;

  AccountDetailItem({
    required this.title,
    required this.value,
  });
}

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //dummy data
    List<AccountDetailItem> accountDetailItems = [
      AccountDetailItem(title: "User Name", value: "John Doe"),
      AccountDetailItem(title: "Account number", value: "123456789"),
      AccountDetailItem(title: "Routing number", value: "987654321"),
      AccountDetailItem(title: "Last statement date", value: "Apr 10, 2023"),
    ];
    final String user_name = "John Doe";
    final double deposit = 10000;
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    const double padding = 20;
    final double screenWidth = MediaQuery.of(context).size.width;

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
      body: Padding(
          padding: const EdgeInsets.only(
            left: padding,
            right: padding,
            top: padding,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    "$user_name's Account",
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
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
                            "\$$deposit",
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
                      for (final item in accountDetailItems) ...{
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(item.title),
                            Text(
                              item.value,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const Divider(),
                      },
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "Menu",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                MenuWidget(
                    width: screenWidth - padding * 2, colorScheme: colorScheme),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          )),
    );
  }
}

class MenuWidget extends StatelessWidget {
  final double width;
  final double itemCount = 4;
  final ColorScheme colorScheme;
  const MenuWidget({
    Key? key,
    required this.width,
    required this.colorScheme,
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
          ),
          _buildMenuItem(
            context,
            icon: Icons.payments_outlined,
            title: "Check\nDeposit",
            path: RoutePath.checkDepositRoute,
          ),
          _buildMenuItem(
            context,
            icon: Icons.account_balance_wallet_outlined,
            title: "Open\nAccount",
            path: RoutePath.openAccountRoute,
          ),
          _buildMenuItem(
            context,
            icon: Icons.person_off_outlined,
            title: "Close\nAccount",
            path: RoutePath.closeAccountRoute,
          ),
          _buildMenuItem(
            context,
            icon: Icons.payment_outlined,
            title: "Payment\n",
            path: RoutePath.paymentRoute,
          ),
          _buildMenuItem(
            context,
            icon: Icons.info_outline,
            title: "Information\n",
            path: RoutePath.informationRoute,
          ),
          // dummy item
          SizedBox(
            width: width / itemCount - 1,
            height: width / itemCount - 1,
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
  }) {
    double itemWidth = width / itemCount - 1;
    return MaterialButton(
      padding: const EdgeInsets.all(0),
      // round corner
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      minWidth: 0,
      onPressed: () {
        logger.d("path: $path");
        context.router.pushNamed(path);
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
