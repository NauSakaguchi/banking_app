import 'package:flutter/services.dart';

class BalanceFormatter extends TextInputFormatter {
  final prefix = "\$";
  final separator = ".";

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    String newText = newValue.text;

    // Remove all non-digit characters
    newText = newText.replaceAll(RegExp(r'\D'), '');

    // Convert the cleaned string to a number
    int numberValue = int.tryParse(newText) ?? 0;

    // Format the number value as currency
    newText = '\$ ${(numberValue / 100).toStringAsFixed(2)}';

    // Update the TextEditingValue with the new formatted text
    return newValue.copyWith(
      text: newText,
      selection: TextSelection.collapsed(offset: newText.length),
    );
  }
}
