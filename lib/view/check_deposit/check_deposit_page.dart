import 'package:flutter/material.dart';

class CheckDepositPage extends StatelessWidget {
  const CheckDepositPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    final enableBorder = OutlineInputBorder(
      borderSide: BorderSide(
        color: colorScheme.onPrimaryContainer,
      ),
    );

    final boxDecoration = BoxDecoration(
      color: colorScheme.surface,
      border: Border.all(color: colorScheme.onPrimaryContainer),
      borderRadius: BorderRadius.circular(5),
    );

    return Scaffold(
      backgroundColor: colorScheme.background,
      appBar: AppBar(title: const Text("Check Deposit")),
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    fillColor: colorScheme.surface,
                    filled: true,
                    border: const OutlineInputBorder(),
                    enabledBorder: enableBorder,
                    labelText: "Account Number",
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  // number keyboard
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    fillColor: colorScheme.surface,
                    filled: true,
                    border: const OutlineInputBorder(),
                    enabledBorder: enableBorder,
                    labelText: "Amount",
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  // number keyboard
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    fillColor: colorScheme.surface,
                    filled: true,
                    border: const OutlineInputBorder(),
                    enabledBorder: enableBorder,
                    labelText: "Check Number",
                  ),
                ),
                // check date with showDatePicker
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  decoration: boxDecoration,
                  child: TextButton(
                    onPressed: () {
                      showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2025),
                      );
                    },
                    child: Text("Check Date"),
                  ),
                ),

                const SizedBox(height: 20),
                MaterialButton(
                  padding: const EdgeInsets.all(0),
                  //round corner
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  onPressed: () {},
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: boxDecoration,
                    width: double.infinity,
                    child: Column(
                      children: [
                        Icon(Icons.add_photo_alternate,
                            color: colorScheme.primary),
                        Text(
                          "Check Image (Front)",
                          style: TextStyle(color: colorScheme.primary),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                MaterialButton(
                  padding: const EdgeInsets.all(0),
                  //round corner
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  onPressed: () {},
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: boxDecoration,
                    width: double.infinity,
                    child: Column(
                      children: [
                        Icon(Icons.add_photo_alternate,
                            color: colorScheme.primary),
                        Text(
                          "Check Image (Back)",
                          style: TextStyle(color: colorScheme.primary),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Submit"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
