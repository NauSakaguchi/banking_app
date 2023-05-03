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
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8),
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
              decoration: const InputDecoration(
                hintText: "Phone Number",
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
