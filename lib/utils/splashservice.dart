import 'dart:async';

import 'package:flutter/material.dart';
import 'package:medicui/pages/home_page.dart';

class SplashService {
  void splahService(BuildContext context) {
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomePage())));
  }
}
