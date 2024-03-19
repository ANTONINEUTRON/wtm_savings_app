

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wtm_savings_app/features/home/pages/home_page.dart';
import 'package:wtm_savings_app/features/login/pages/login_page.dart';
import 'package:wtm_savings_app/features/signup/bloc/signup_bloc.dart';
import 'package:wtm_savings_app/features/signup/bloc/signup_state.dart';
import 'package:wtm_savings_app/shared/widgets/custom_textfield.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  String fullName = "";
  String emailAddress = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    SignupBloc bloc = context.watch<SignupBloc>();
    SignupState state = bloc.state;

    switch(state.signupStatus){
      case SignupStatus.Initial:
        break;
      case SignupStatus.Processing:
        // TODO: Handle this case.
        break;
      case SignupStatus.Successful:
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          Navigator.pushReplacement(
              context,
              HomePage.route(),
          );
          bloc.reset();
        });
        break;
      case SignupStatus.Error:
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          ScaffoldMessenger
              .of(context)
              .showSnackBar(SnackBar(content: Text("An error occured")));
        });
        break;
    }

    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                  onPressed: (){
                    _navigateToLoginPage(context);
                  },
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
                fullName = newText;
              },
            ),
            CustomTextField(
              label: "Email Address",
              onChanged: (newText) {
                emailAddress = newText;
              },
              textInputType: TextInputType.emailAddress,
            ),
            CustomTextField(
              label: "Password",
              onChanged: (newText) {
                password = newText;
              },
              isAPassword: true,
            ),
            SizedBox(height: 24,),
            ElevatedButton(
                onPressed: state.signupStatus == SignupStatus.Processing ? null : () {
                  if(_isUserInputValid()){
                    bloc.registerUser(
                      fullName: fullName,
                      emailAddress: emailAddress,
                      password: password,
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                    ),
                  ),
                  backgroundColor: Theme.of(context).primaryColor,
                  foregroundColor: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if(state.signupStatus == SignupStatus.Processing)
                      CircularProgressIndicator(),
                    Text("CREATE ACCOUNT"),
                  ],
                )
            ),
            TextButton(
                onPressed: () {
                  _navigateToLoginPage(context);
                },
                child: Text("Already have an account? Log In"),
            )
          ],
        ),
      ),
    );
  }

  void _navigateToLoginPage(BuildContext context) {
    Navigator.pushReplacement(
        context,
      MaterialPageRoute(builder: (context) {
        return LoginPage();
      },)
    );
  }

  bool _isUserInputValid(){
    String errorMessage = "";
    //Check to see if input is valid
    if(fullName.isEmpty){
      errorMessage = "Full name cannot be empty";
    }else if(emailAddress.isEmpty){
      errorMessage = "Email cannot be empty";
    }else if(password.isEmpty || password.length < 8){
      errorMessage = "Enter a strong password greater than 7 characters";
    }
    if(errorMessage.isNotEmpty){
      //Show Snackbar Alert
      ScaffoldMessenger
          .of(context)
          .showSnackBar(SnackBar(content: Text(errorMessage)));
      return false;
    }
    return true;
  }
}
