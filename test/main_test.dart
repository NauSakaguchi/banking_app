import 'package:banking_app/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

class MockFirebase extends Mock implements FirebaseApp {}

@GenerateMocks([Firebase])
void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() {
    TestWidgetsFlutterBinding.ensureInitialized();
  });

  testWidgets('Main function initializes Firebase and runs MyApp',
      (WidgetTester tester) async {
    final mockFirebase = MockFirebase();

    when(mockFirebase.name).thenReturn('testApp');
    when(Firebase.initializeApp()).thenAnswer((_) async => mockFirebase);

    await tester.runAsync(() async {
      runApp(
        ProviderScope(
          child: MyApp(),
        ),
      );
    });

    expect(find.byType(MyApp), findsOneWidget);
  });
}
