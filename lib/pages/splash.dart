import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sertifikasiku/pages/index.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      // 5 seconds over, navigate to Page2.
      Navigator.pushReplacement(
          context, CupertinoPageRoute(builder: (_) => const IndexPage()));
    });
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(color: Color(0xFFFFFFFF)),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 90.0),
                  child: SvgPicture.asset(
                    'assets/images/logo.svg',
                    height: 60,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
