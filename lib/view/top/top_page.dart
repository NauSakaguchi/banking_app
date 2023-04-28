import 'package:banking_app/view/account/account_page.dart';
import 'package:banking_app/view/atm_map/atm_map_page.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TopPage extends ConsumerWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
          body: const TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              AccountPage(),
              AtmMapPage(),
            ],
          ),
        ),
      ),
    );
  }
}
