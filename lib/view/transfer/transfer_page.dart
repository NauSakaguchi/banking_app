import 'package:banking_app/view/style/decorations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(title: const Text("Transfer")),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Text(
                  "From",
                  style: TextStyle(fontSize: 20),
                ),
                // dropdown button to select account
                const SizedBox(height: 20),
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
                        child: Text(value,
                            style: TextStyle(
                                fontSize: 20, color: colorScheme.primary)),
                      );
                    }).toList(),
                  ),
                ),

                const SizedBox(height: 10),
                // divider
                const Divider(
                  height: 20,
                  thickness: 1,
                ),
                const SizedBox(height: 10),
                const Text(
                  "To",
                  style: TextStyle(fontSize: 20),
                ),
                // dropdown button to select account
                const SizedBox(height: 20),
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
                        child: Text(value,
                            style: TextStyle(
                                fontSize: 20, color: colorScheme.primary)),
                      );
                    }).toList(),
                  ),
                ),

                // Amount
                const SizedBox(height: 20),
                TextField(
                  // number keyboard
                  keyboardType: TextInputType.number,
                  decoration: Decorations.inputDecoration(
                    "Amount",
                    colorScheme,
                  ),
                ),

                const SizedBox(height: 20),
                TextField(
                  decoration: Decorations.inputDecoration(
                    "Description",
                    colorScheme,
                  ),
                ),

                // Transfer Button
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Transfer"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
