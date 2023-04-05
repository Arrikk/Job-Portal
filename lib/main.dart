import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:job_finder/colors.dart';
import 'package:job_finder/screens/home/home.dart';

void main() {
  runApp(const JobFinder());
}

class JobFinder extends StatelessWidget {
  const JobFinder({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent)
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Job Finder App',
      theme: ThemeData(
        primaryColor: kPrimary,
        colorScheme: ColorScheme.fromSwatch(accentColor: accentColor),
      ),
      home: const HomePage(),
    );
  }
}
