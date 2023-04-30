import 'dart:io';

import 'package:banking_app/component/account_picker.dart';
import 'package:banking_app/core/ui_core/date_time_formatter.dart';
import 'package:banking_app/main.dart';
import 'package:banking_app/view/check_deposit/state/check_deposit_provider.dart';
import 'package:banking_app/view/style/decorations.dart';
import 'package:banking_app/view_model/user_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';

class CheckDepositPage extends HookConsumerWidget {
  const CheckDepositPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    final checkDepositItems = ref.watch(checkDepositItemsProvider);
    final notifier = ref.watch(checkDepositItemsProvider.notifier);

    // text controller
    final TextEditingController accountNumberController =
        useTextEditingController(text: checkDepositItems.accountNumber);
    final TextEditingController routingNumberController =
        useTextEditingController(text: checkDepositItems.routingNumber);
    final TextEditingController amountController = useTextEditingController(
        text: checkDepositItems.checkAmount == null
            ? ""
            : checkDepositItems.checkAmount.toString());

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
                // from
                const Text(
                  "From",
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: accountNumberController,
                  // number keyboard
                  keyboardType: TextInputType.number,
                  decoration: Decorations.inputDecoration(
                      "Account Number", colorScheme),
                  onChanged: (value) {
                    notifier.updateAccountNumber(value);
                  },
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: routingNumberController,
                  // number keyboard
                  keyboardType: TextInputType.number,
                  decoration: Decorations.inputDecoration(
                      "Routing Number", colorScheme),
                  onChanged: (value) {
                    notifier.updateRoutingNumber(value);
                  },
                ),
                // to
                const SizedBox(height: 20),
                const Text(
                  "To",
                  style: TextStyle(fontSize: 20),
                ),
                // account picker
                AccountPicker(
                  colorScheme: colorScheme,
                  accountList:
                      ref.watch(userInfoProvider.notifier).getAccountNumbers(),
                  onChanged: (value) {},
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: amountController,
                  // number keyboard
                  keyboardType: TextInputType.number,
                  decoration:
                      Decorations.inputDecoration("Amount", colorScheme),
                  onChanged: (value) {
                    // convert str to int
                    final value = int.tryParse(amountController.text) ?? 0;
                    notifier.updateCheckAmount(value);
                  },
                ),
                // check date with showDatePicker
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  decoration: boxDecoration,
                  child: TextButton(
                    onPressed: () async {
                      final DateTime? date = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        // 5years ago from now
                        firstDate: DateTime(DateTime.now().year - 5),
                        lastDate: DateTime.now(),
                      );
                      if (date != null) {
                        notifier.updateCheckDate(date);
                      }
                    },
                    child: checkDepositItems.checkDate == null
                        ? const Text("Check Date")
                        : Text(
                            DateTimeFormatter.convertDateToString(
                              checkDepositItems.checkDate!,
                            ),
                          ),
                  ),
                ),

                const SizedBox(height: 20),
                _buildImagePickerButton(
                  context,
                  label: "Check Image (Front)",
                  colorScheme: colorScheme,
                  setState: notifier.updateCheckFrontImage,
                  removeState: notifier.removeCheckFrontImage,
                  image: checkDepositItems.checkFrontImage,
                ),
                const SizedBox(height: 20),
                _buildImagePickerButton(
                  context,
                  label: "Check Image (Back)",
                  colorScheme: colorScheme,
                  setState: notifier.updateCheckBackImage,
                  removeState: notifier.removeCheckBackImage,
                  image: checkDepositItems.checkBackImage,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: checkDepositItems.buttonLoading
                      ? null
                      : () async {
                          // start loading
                          notifier.updateButtonStatus(true);

                          // if there is an empty field or null field, show error toast message
                          if (checkDepositItems.accountNumber.isEmpty ||
                              checkDepositItems.routingNumber.isEmpty ||
                              checkDepositItems.checkAmount == null ||
                              checkDepositItems.checkAmount! <= 0 ||
                              checkDepositItems.checkDate == null ||
                              checkDepositItems.checkFrontImage == null ||
                              checkDepositItems.checkBackImage == null) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("Please fill all fields"),
                              ),
                            );
                            // stop loading
                            notifier.updateButtonStatus(false);
                            return;
                          }

                          logger.d(
                              "Account Number: ${checkDepositItems.accountNumber}");
                          logger.d(
                              "Routing Number: ${checkDepositItems.routingNumber}");
                          logger.d("Amount: ${checkDepositItems.checkAmount}");
                          logger
                              .d("Check Date: ${checkDepositItems.checkDate}");
                          // wait 2 seconds
                          await Future.delayed(const Duration(seconds: 2));

                          // stop loading
                          notifier.updateButtonStatus(false);
                        },
                  child: Text(checkDepositItems.depositButtonTxt),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildImagePickerButton(
    BuildContext context, {
    required String label,
    required ColorScheme colorScheme,
    required void Function(File) setState,
    required void Function() removeState,
    required File? image,
  }) {
    final boxDecoration = BoxDecoration(
      color: colorScheme.surface,
      border: Border.all(color: colorScheme.onPrimaryContainer),
      borderRadius: BorderRadius.circular(5),
    );

    if (image != null) {
      return Column(
        children: [
          Container(
            width: double.infinity,
            decoration: boxDecoration,
            child: Image.file(image),
          ),
          TextButton(
            onPressed: () {
              removeState();
            },
            child: const Text("Remove"),
          ),
        ],
      );
    }

    return MaterialButton(
      padding: const EdgeInsets.all(0),
      //round corner
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      onPressed: () async {
        // CupertinoActionSheet for choose camera or gallery
        final action = await showCupertinoModalPopup(
          context: context,
          builder: (context) => CupertinoActionSheet(
            title: const Text("Choose Image from"),
            actions: [
              CupertinoActionSheetAction(
                onPressed: () {
                  Navigator.pop(context, "camera");
                },
                child: const Text(
                  "Camera",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              CupertinoActionSheetAction(
                onPressed: () {
                  Navigator.pop(context, "gallery");
                },
                child: const Text(
                  "Gallery",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
            cancelButton: CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pop(context, "cancel");
              },
              child: const Text(
                "Cancel",
                style: TextStyle(color: Colors.red),
              ),
            ),
          ),
        );
        if (action == "camera") {
          final image =
              await ImagePicker().pickImage(source: ImageSource.camera);
          if (image == null) return;
          setState(File(image.path));
        } else if (action == "gallery") {
          final image =
              await ImagePicker().pickImage(source: ImageSource.gallery);
          if (image == null) return;
          setState(File(image.path));
        } else {
          return;
        }
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: boxDecoration,
        width: double.infinity,
        child: Column(
          children: [
            Icon(Icons.add_photo_alternate, color: colorScheme.primary),
            Text(
              label,
              style: TextStyle(color: colorScheme.primary),
            ),
          ],
        ),
      ),
    );
  }
}
