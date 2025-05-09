import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:projek_29_april2/home_screen.dart';
import 'package:projek_29_april2/login_screen.dart';
import 'package:get/get.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      final box = GetStorage();
      final statususername = box.read('username');

      if (statususername == null) {
        Get.off(() =>MyWidget());
      } else {
         Get.off(() => HomeScreen());
      }
     
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.apple, size: 100),
            SizedBox(height: 100),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}