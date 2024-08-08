import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:todo_api/Pages/onboarding.dart';
import 'package:todo_api/Provider/CartProvider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.dmSerifDisplayTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: OnBoardingPage()
    );
  }
}
