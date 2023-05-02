import 'package:flutter/material.dart';

class ToastMessage extends StatelessWidget {
  const ToastMessage({
    Key? key,
    required this.toastText,
    this.isError = false,
  }) : super(key: key);

  final String toastText;
  final bool isError;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Material(
      elevation: 20.0,
      borderRadius: BorderRadius.circular(25.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: isError ? colorScheme.error : colorScheme.background,
        ),
        child: Text(
          toastText,
          style: isError
              ? TextStyle(color: colorScheme.onPrimary, fontSize: 18)
              : const TextStyle(),
        ),
      ),
    );
  }
}
