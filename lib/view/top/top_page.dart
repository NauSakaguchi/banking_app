import 'package:auto_route/auto_route.dart';
import 'package:banking_app/constant/route/route_path.dart';
import 'package:banking_app/constant/string/globar_string.dart';
import 'package:banking_app/view/atm_map/atm_map_page.dart';
import 'package:banking_app/view_model/user_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TopPage extends ConsumerWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userState = ref.watch(userInfoProvider);
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return WillPopScope(
      onWillPop: () async => false,
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          bottomNavigationBar: Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            color: colorScheme.background,
            height: 70,
            child: TabBar(
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), // Creates border
                  color: colorScheme.primary),
              tabs: <Widget>[
                Tab(
                  icon: Icon(
                    Icons.home,
                    color: colorScheme.onBackground,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.map,
                    color: colorScheme.onBackground,
                  ),
                ),
              ],
            ),
          ),
          appBar: AppBar(
            leading: const SizedBox(),
            title: const Text(
              GlobalString.APP_NAME,
            ),
          ),
          body: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(20),
                      child: Text("Hello, your Unique ID is"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Text("${userState.uid}"),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        await FirebaseAuth.instance.signOut();
                        Navigator.pop(context);
                      },
                      child: const Text("Sign Out"),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        context.router.pushNamed(RoutePath.atmMapRouteLogin);
                      },
                      child: const Text("ATM MAP"),
                    ),
                  ],
                ),
              ),
              AtmMapPage(),
            ],
          ),
        ),
      ),
    );
  }
}
