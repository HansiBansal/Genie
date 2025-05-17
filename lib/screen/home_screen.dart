import 'package:chatbot_ai/model/home_type.dart';
import 'package:chatbot_ai/widget/home_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

import '../apis/apis.dart';
import '../helper/global.dart';
import '../helper/pref.dart';

class HomeScreen  extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeScreen();
}

class _HomeScreen extends State{
  @override

  void initState(){
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    Pref.showOnBoarding = false;
  }



  Widget build(BuildContext context) {
    // initializing device size
    mq = MediaQuery.sizeOf(context);
    APIs.getAnswer('hi');

    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        backgroundColor: Color(0xFF1976D2),
        title: Text(
          appName,
          style: GoogleFonts.domine(
            textStyle: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey.shade900,
            ),
          ),
        ),
        actions: [
          IconButton(
            padding: EdgeInsets.only(right: 10),
            onPressed: () {},
            icon: Icon(
              Icons.brightness_4_rounded,
              color: Colors.blueGrey.shade900,
              size: 26,
            ),
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: mq.width * .04, vertical: mq.height * .015),
        children: HomeType.values.map((e) => Homecard(homeType: e)).toList(),
      )

    );
  }
}
