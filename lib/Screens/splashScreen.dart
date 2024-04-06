// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, file_names, unused_local_variable
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:rpz_project/Screens/signup.dart';
import '../Core/app_assets.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer(Duration(seconds: 4),
          () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) =>Signup() ,)),);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return Scaffold(body:Center(
      child:
      Image(image:AssetImage(AppAssets.logo
      ),
      ),
    )
    );
  }
}