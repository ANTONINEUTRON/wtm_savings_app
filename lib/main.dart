import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wtm_savings_app/features/home/bloc/home_bloc.dart';
import 'package:wtm_savings_app/features/home/pages/home_page.dart';
import 'package:wtm_savings_app/features/invest/models/invest.dart';
import 'package:wtm_savings_app/features/login/pages/login_page.dart';
import 'package:wtm_savings_app/features/signup/bloc/signup_bloc.dart';
import 'package:wtm_savings_app/features/signup/pages/registration_page.dart';
import 'package:wtm_savings_app/firebase_options.dart';

void main() async{
  runApp(const MyApp());
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context)=>HomeBloc()
        ),
        BlocProvider(
            create: (context)=>SignupBloc()
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.blue,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
          scaffoldBackgroundColor: Colors.grey.shade100,
        ),
        home: LoginPage(),
      ),
    );
  }
}