import 'package:banking_app/view/style/decorations.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: colorScheme.background,
      appBar: AppBar(title: const Text("Payment")),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Text(
                  "Pay from",
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

                const SizedBox(height: 20),
                const Text(
                  "Pay to",
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 20),
                TextField(
                  // number keyboard
                  keyboardType: TextInputType.number,
                  decoration: Decorations.inputDecoration(
                    "Account Number",
                    colorScheme,
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  // number keyboard
                  keyboardType: TextInputType.number,
                  decoration: Decorations.inputDecoration(
                    "Account Name",
                    colorScheme,
                  ),
                ),
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
                    "Memo",
                    colorScheme,
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Pay"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
