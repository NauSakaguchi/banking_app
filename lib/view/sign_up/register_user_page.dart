import 'package:banking_app/main.dart';
import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';

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
        child: RegisterUserForm(),
      ),
    );
  }
}

// register first name, last name, ssn and phone number
class RegisterUserForm extends StatelessWidget {
  const RegisterUserForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

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
              onChanged: (value) {},
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
              onChanged: (value) {},
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
              onChanged: (value) {},
              // number only
              keyboardType: TextInputType.number,
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
              onChanged: (value) {},
              // number only
              keyboardType: TextInputType.number,
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
                  CustomCSCPicker(colorScheme: colorScheme),
            ),
            // enter street address and zip code
            TextField(
              onChanged: (value) {},
              decoration: const InputDecoration(
                hintText: "Street Address",
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              onChanged: (value) {},
              // number only
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: "Zip Code",
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Sign Up"),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomCSCPicker extends StatelessWidget {
  const CustomCSCPicker({
    Key? key,
    required this.colorScheme,
  }) : super(key: key);

  final ColorScheme colorScheme;

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
      onCountryChanged: (value) {
        logger.d(value);
      },

      ///triggers once state selected in dropdown
      onStateChanged: (value) {
        logger.d(value);
      },

      ///triggers once city selected in dropdown
      onCityChanged: (value) {
        logger.d(value);
      },

      ///Show only specific countries using country filter
      // countryFilter: ["United States", "Canada", "Mexico"],
    );
  }
}
