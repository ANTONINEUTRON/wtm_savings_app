import 'package:flutter/material.dart';
import 'package:wtm_savings_app/features/signup/widgets/registration_bottom_section.dart';
import 'package:wtm_savings_app/features/signup/widgets/registration_top_section.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          reverse: true,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
            child: Column(
              children: [
                RegistrationTopSection(),
                RegistrationBottomSection()
              ],
            ),
          ),

        ),
      ),
    );
  }
}