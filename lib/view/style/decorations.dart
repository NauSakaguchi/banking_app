import 'package:flutter/material.dart';

class Decorations {
  static InputDecoration inputDecoration(
      String label, ColorScheme colorScheme) {
    final enableBorder = OutlineInputBorder(
      borderSide: BorderSide(
        color: colorScheme.onPrimaryContainer,
      ),
    );

    return InputDecoration(
      fillColor: colorScheme.surface,
      filled: true,
      border: const OutlineInputBorder(),
      enabledBorder: enableBorder,
      labelText: label,
    );
  }
}
