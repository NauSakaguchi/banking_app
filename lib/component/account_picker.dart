import 'package:flutter/material.dart';

class AccountPicker extends StatelessWidget {
  final ColorScheme colorScheme;
  final List<String> accountList;
  final void Function(String?) onChanged;
  final String? value;

  const AccountPicker({
    Key? key,
    required this.colorScheme,
    required this.accountList,
    required this.onChanged,
    this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: colorScheme.onPrimaryContainer),
        borderRadius: BorderRadius.circular(5),
        color: colorScheme.surface,
      ),
      child: DropdownButton(
        isExpanded: true,
        value: value,
        onChanged: onChanged,
        items: accountList.map<DropdownMenuItem<String>>((value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text("Account (...${value.substring(value.length - 4)})",
                style: TextStyle(fontSize: 20, color: colorScheme.primary)),
          );
        }).toList(),
      ),
    );
  }
}
