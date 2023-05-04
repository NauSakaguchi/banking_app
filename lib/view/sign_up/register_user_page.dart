import 'package:auto_route/auto_route.dart';
import 'package:banking_app/constant/route/route_path.dart';
import 'package:banking_app/core/firebase/auth.dart';
import 'package:banking_app/core/hooks/useFlutterToast.dart';
import 'package:banking_app/main.dart';
import 'package:banking_app/view/sign_up/sign_up_state/sign_up_page_provider.dart';
import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RegisterUserPage extends StatelessWidget {
  const RegisterUserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up (2/2)"),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: const RegisterUserForm(),
      ),
    );
  }
}

// register first name, last name, ssn and phone number
class RegisterUserForm extends HookConsumerWidget {
  const RegisterUserForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    // text controller
    final TextEditingController firstNameController =
        useTextEditingController();
    final TextEditingController lastNameController = useTextEditingController();
    final TextEditingController ssnController = useTextEditingController();
    final TextEditingController phoneNumberController =
        useTextEditingController();
    final TextEditingController streetAddressController =
        useTextEditingController();
    final TextEditingController zipCodeController = useTextEditingController();
    final toast = useFlutterToast();

    final pageState = ref.watch(signUpPageProvider);
    final pageProvider = ref.read(signUpPageProvider.notifier);

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            const SizedBox(height: 30),
            const Text(
              "Enter your first name",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10),
            TextField(
              onChanged: (value) {
                pageProvider.updateFirstName(value);
              },
              controller: firstNameController,
              decoration: const InputDecoration(
                hintText: "First Name",
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "Enter your last name",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10),
            TextField(
              onChanged: (value) {
                pageProvider.updateLastName(value);
              },
              controller: lastNameController,
              decoration: const InputDecoration(
                hintText: "Last Name",
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "Enter your social security number",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10),
            TextField(
              onChanged: (value) {
                pageProvider.updateSsn(value);
              },
              // number only
              keyboardType: TextInputType.number,
              controller: ssnController,
              decoration: const InputDecoration(
                hintText: "Social Security Number",
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "Enter your phone number",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10),
            TextField(
              onChanged: (value) {
                pageProvider.updatePhoneNumber(value);
              },
              // number only
              keyboardType: TextInputType.number,
              controller: phoneNumberController,
              decoration: const InputDecoration(
                hintText: "Phone Number",
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "Enter your address",
              style: TextStyle(fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child:

                  ///Adding CSC Picker Widget in app
                  CustomCSCPicker(
                colorScheme: colorScheme,
                onStateChanged: pageProvider.updateUsState,
                onCityChanged: pageProvider.updateCity,
              ),
            ),
            // enter street address and zip code
            TextField(
              onChanged: (value) {
                pageProvider.updateAddress(value);
              },
              controller: streetAddressController,
              decoration: const InputDecoration(
                hintText: "Street Address",
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              onChanged: (value) {
                pageProvider.updateZipCode(value);
              },
              // number only
              keyboardType: TextInputType.number,
              controller: zipCodeController,
              decoration: const InputDecoration(
                hintText: "Zip Code",
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: pageState.buttonLoading
                  ? null
                  : () async {
                      // show log
                      logger.d("First Name: ${pageState.firstName}");
                      logger.d("Last Name: ${pageState.lastName}");
                      logger.d("SSN: ${pageState.ssn}");
                      logger.d("Phone Number: ${pageState.phoneNumber}");
                      logger.d("State: ${pageState.usState}");
                      logger.d("City: ${pageState.city}");
                      logger.d("Street Address: ${pageState.address}");
                      logger.d("Zip Code: ${pageState.zipCode}");

                      // // validate fields
                      // final String? errorMessage = _validateFields(
                      //   pageState.firstName,
                      //   pageState.lastName,
                      //   pageState.ssn,
                      //   pageState.phoneNumber,
                      //   pageState.usState,
                      //   pageState.city,
                      //   pageState.address,
                      //   pageState.zipCode,
                      // );
                      // if (errorMessage != null) {
                      //   ScaffoldMessenger.of(context).showSnackBar(
                      //     SnackBar(
                      //       content: Text(errorMessage),
                      //     ),
                      //   );
                      //   return;
                      // }

                      pageProvider.updateButtonLoading(true);
                      // sign up
                      final error =
                          await ref.watch(authProvider.notifier).signUp(
                                email: pageState.email,
                                password: pageState.password,
                              );
                      if (error != null) {
                        toast.showErrorToast(error);
                        pageProvider.updateButtonLoading(false);
                        return;
                      }

                      try {
                        pageProvider.singUp();
                      } catch (e) {
                        toast.showErrorToast(e.toString());
                        pageProvider.updateButtonLoading(false);
                        return;
                      }

                      //back to previous page
                      context.router.pop().whenComplete(() {
                        // navigate to home page
                        context.router.replaceNamed(RoutePath.topRoute);
                      });
                    },
              child: const Text("Sign Up"),
            ),
          ],
        ),
      ),
    );
  }

  String? _validateFields(
    String firstName,
    String lastName,
    String ssn,
    String phoneNumber,
    String usState,
    String city,
    String address,
    String zipCode,
  ) {
    // check if any field is empty
    if (firstName.isEmpty ||
        lastName.isEmpty ||
        ssn.isEmpty ||
        phoneNumber.isEmpty ||
        usState.isEmpty ||
        city.isEmpty ||
        address.isEmpty ||
        zipCode.isEmpty) {
      return "Please fill out all fields";
    }

    // check if ssn is valid
    if (ssn.length != 9) {
      return "Please enter a valid social security number";
    }

    // check if phone number is numeric
    if (!isNumeric(phoneNumber)) {
      return "Please enter a valid phone number";
    }

    // check if phone number is valid
    if (phoneNumber.length < 4) {
      return "Phone number is too short";
    }

    // check if zip number is numeric
    if (!isNumeric(zipCode)) {
      return "Please enter a valid zip code";
    }

    // check if ssnumber is numeric
    if (!isNumeric(ssn)) {
      return "Please enter a valid social security number";
    }

    // check if zip code is valid
    if (zipCode.length != 5) {
      return "Please enter a valid zip code";
    }

    // all fields are valid
    return null;
  }

  bool isNumeric(String s) {
    return double.tryParse(s) != null;
  }
}

class CustomCSCPicker extends StatelessWidget {
  const CustomCSCPicker({
    Key? key,
    required this.colorScheme,
    required this.onStateChanged,
    required this.onCityChanged,
  }) : super(key: key);

  final ColorScheme colorScheme;
  final void Function(String?) onStateChanged;
  final void Function(String?) onCityChanged;

  @override
  Widget build(BuildContext context) {
    return CSCPicker(
      ///Enable disable state dropdown [OPTIONAL PARAMETER]
      showStates: true,

      /// Enable disable city drop down [OPTIONAL PARAMETER]
      showCities: true,

      ///Enable (get flag with country name) / Disable (Disable flag) / ShowInDropdownOnly (display flag in dropdown only) [OPTIONAL PARAMETER]
      flagState: CountryFlag.DISABLE,

      ///Dropdown box decoration to style your dropdown selector [OPTIONAL PARAMETER] (USE with disabledDropdownDecoration)
      dropdownDecoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(color: Colors.grey.shade300, width: 1)),

      ///Disabled Dropdown box decoration to style your dropdown selector [OPTIONAL PARAMETER]  (USE with disabled dropdownDecoration)
      disabledDropdownDecoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: colorScheme.tertiary,
          border: Border.all(color: Colors.grey.shade300, width: 1)),

      ///placeholders for dropdown search field
      countrySearchPlaceholder: "Country",
      stateSearchPlaceholder: "State",
      citySearchPlaceholder: "City",

      ///labels for dropdown
      countryDropdownLabel: "Country",
      stateDropdownLabel: "State",
      cityDropdownLabel: "City",

      ///Default Country
      defaultCountry: CscCountry.United_States,

      ///Country Filter [OPTIONAL PARAMETER]
      // countryFilter: [
      //   CscCountry.United_States,
      // ],

      ///Disable country dropdown (Note: use it with default country)
      disableCountry: true,

      ///selected item style [OPTIONAL PARAMETER]
      selectedItemStyle: const TextStyle(fontSize: 14),

      ///DropdownDialog Heading style [OPTIONAL PARAMETER]
      dropdownHeadingStyle:
          const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),

      ///DropdownDialog Item style [OPTIONAL PARAMETER]
      dropdownItemStyle: const TextStyle(fontSize: 14),

      ///Dialog box radius [OPTIONAL PARAMETER]
      dropdownDialogRadius: 10.0,

      ///Search bar radius [OPTIONAL PARAMETER]
      searchBarRadius: 10.0,

      ///triggers once country selected in dropdown
      onCountryChanged: (value) {},

      ///triggers once state selected in dropdown
      onStateChanged: onStateChanged,

      ///triggers once city selected in dropdown
      onCityChanged: onCityChanged,

      ///Show only specific countries using country filter
      // countryFilter: ["United States", "Canada", "Mexico"],
    );
  }
}
