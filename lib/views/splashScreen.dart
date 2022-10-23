import 'package:astrology_application/utils/appRoutes.dart';
import 'package:flutter/material.dart';

import '../helpperclass.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> navigateToHomeScreen() async {
    Future.delayed(
      const Duration(seconds: 5),
      () => Navigator.of(context).pushNamedAndRemoveUntil(
          AppRoutes().homePage, (Route<dynamic> route) => false),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigateToHomeScreen();


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: const Center(
        child: Image(
          image: NetworkImage(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7OFMFopr8Fr4bOs46czQ5kVMMTWpuqWHLVA&usqp=CAU"),
          width: 150,
          height: 150,
        ),
      ),
    );
  }
}
