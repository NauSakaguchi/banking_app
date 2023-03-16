import 'package:banking_app/view_model/user_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TopPage extends ConsumerWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userState = ref.watch(userInfoProvider);
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Center(
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
            ],
          ),
        ),
      ),
    );
  }
}
