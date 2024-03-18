

import 'package:flutter/material.dart';
import 'package:wtm_savings_app/features/login/pages/login_page.dart';
import 'package:wtm_savings_app/shared/widgets/custom_textfield.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                  onPressed: (){},
                  icon: Icon(
                    Icons.cancel_outlined,
                    size: 45,
                  )
              ),
            ),
            Text(
                "Create Account",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor,
              ),
            ),
            Text("Create a free account and start a proper financial with PiggyVest."),
            CustomTextField(
              label: "Full Name",
              onChanged: (newText) {

              },
            ),
            CustomTextField(
              label: "Email Address",
              onChanged: (newText) {

              },
            ),
            CustomTextField(
              label: "Phone Number",
              onChanged: (newText) {

              },
            ),
            CustomTextField(
              label: "Password",
              onChanged: (newText) {

              },
            ),
            SizedBox(height: 24,),
            ElevatedButton(
                onPressed: () {

                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                    )
                  ),
                  backgroundColor: Theme.of(context).primaryColor,
                  foregroundColor: Colors.white,
                ),
                child: Text("CREATE ACCOUNT")
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context, 
                    MaterialPageRoute(builder: (context) {
                      return LoginPage();
                    },)
                  );
                },
                child: Text("Already have an account? Log In"),
            )
          ],
        ),
      ),
    );
  }
}
