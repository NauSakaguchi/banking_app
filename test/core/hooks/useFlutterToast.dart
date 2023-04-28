import 'package:banking_app/component/toast_message.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fluttertoast/fluttertoast.dart';

class useFlutterToast {
  final fToast = FToast();

  useFlutterToast() : super() {
    final context = useContext();
    fToast.init(context);
  }

  void showErrorToast([String? message]) {
    fToast.showToast(
      child: ToastMessage(
        toastText: message ?? "Something Wrong...",
        isError: true,
      ),
      toastDuration: const Duration(seconds: 5),
      gravity: ToastGravity.TOP,
    );
  }

  void showInfoToast([String? message]) {
    fToast.showToast(
      child: ToastMessage(toastText: message ?? "Hello"),
      toastDuration: const Duration(seconds: 3),
      gravity: ToastGravity.TOP,
    );
  }
}
