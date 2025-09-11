import 'dart:async';

import 'package:ecomm_395/domain/constants/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 2), () async{
      String nextPage = AppRoutes.login_page;

      SharedPreferences prefs = await SharedPreferences.getInstance();
      String token = prefs.getString("token") ?? "";

      if(token.isNotEmpty){
        nextPage = AppRoutes.dashboard_page;
      }


      Navigator.pushReplacementNamed(context, nextPage);
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/icons/ic_logo.png", width: 100, height: 100,),
            SizedBox(height: 11),
            Text(
              "E-commerce",
              style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
