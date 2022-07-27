import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mechanic_around/utilities/my_assets.dart';
import 'package:mechanic_around/utilities/my_colors.dart';
import 'package:mechanic_around/utilities/my_navigation.dart';
import 'package:mechanic_around/views/auth/sign_in.dart';
import 'package:shimmer/shimmer.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    Timer(Duration(seconds: 5), () {
      return MyNavigation().push(context, SignIn());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: height,
        // width: width,

        child: Container(
          alignment: Alignment.center,
          height: height,
          width: width,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            MyColors.yellow2.withOpacity(0.2),
       
            MyColors.red2.withOpacity(0.6),
          ], end: Alignment.bottomLeft, begin: Alignment.topRight)),
          child: Center(
              child: Shimmer.fromColors(
                  child: Image.asset(
                    MyAssets.logo,
                    width: 300,
                  ),
                  baseColor: MyColors.yellow,
                  highlightColor: MyColors.red),
        ),
      ),
    ));
  }
}
