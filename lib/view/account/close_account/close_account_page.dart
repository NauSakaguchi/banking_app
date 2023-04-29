import 'package:banking_app/view/style/decorations.dart';
import 'package:flutter/material.dart';

class CloseAccountPage extends StatelessWidget {
  const CloseAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(title: const Text("Close Account")),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                const SizedBox(height: 30),
                const Text(
                  "Select account to close",
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: colorScheme.onPrimaryContainer),
                    borderRadius: BorderRadius.circular(5),
                    color: colorScheme.surface,
                  ),
                  child: DropdownButton(
                    isExpanded: true,
                    value: "Account (6683)",
                    onChanged: (newValue) {},
                    items: <String>['Account (6683)', 'Saving', 'Credit Card']
                        .map<DropdownMenuItem<String>>((value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(
                              fontSize: 20, color: colorScheme.primary),
                        ),
                      );
                    }).toList(),
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  "Enter your password",
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 10),
                TextField(
                  obscureText: true,
                  decoration: Decorations.inputDecoration(
                    "Password",
                    colorScheme,
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Close Account"),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
