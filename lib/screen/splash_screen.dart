import 'package:chatbot_ai/screen/home_screen.dart';
import 'package:chatbot_ai/widget/custom_loading.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../helper/global.dart';
import '../helper/pref.dart';
import 'onboarding_screen.dart';

class SplashScreen  extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SplashScreen();
}

class _SplashScreen extends State{
  @override

  void initState(){
    super.initState();

    //wait for some time on splash and then move to next screen
    Future.delayed(
      const Duration(milliseconds: 1800),() {
      //   Navigator.pushReplacement(
      //       context, MaterialPageRoute (
      //       builder: (BuildContext context) => Pref.showOnBoarding ? OnBoardingScreen() : HomeScreen(),
      //
      //   ));


      Get.off(() => Pref.showOnBoarding ? OnBoardingScreen() : HomeScreen());

    });

  }
  Widget build(BuildContext context) {
    // initializing device size
    mq = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor:Color(0xFF0D47A1), // Dark Blue
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            Spacer(),

            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(100))
              ),
              child: Padding(
                padding: EdgeInsets.all(mq.width * .05),
                child: Image.asset(
                    'assets/logo.png',
                     width: mq.width * 0.2,),
              ),
            ),
            // CustomLoading(),
             Spacer()



          ],
        ),
      ),
    );
  }
}