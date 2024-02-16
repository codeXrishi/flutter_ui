import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:medicui/utils/splashservice.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashService service = SplashService();
  @override
  void initState() {
    super.initState();
    service.splahService(context);
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFFFED9ED),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: height * 0.3,
              child: LottieBuilder.asset(
                'lib/images/doctor_anim.json',
                height: height * 0.3,
              ),
            ),
            Text(
              'MedKit',
              style: GoogleFonts.mPlus1Code(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                letterSpacing: 3,
              ),
            )
          ],
        ),
      ),
    );
  }
}
