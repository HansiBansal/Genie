import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../helper/global.dart';


import 'package:google_fonts/google_fonts.dart';

import '../model/home_type.dart';


class Homecard extends StatelessWidget {
    final HomeType homeType;
    const Homecard({super.key, required this.homeType});


    // late PageController _pageController;
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.sizeOf(context);
     return Card(
       color: Colors.blue.shade100,
       elevation: 0,
       margin: EdgeInsets.only(bottom: mq.height * .02),
       shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.all(Radius.circular(20))
       ),

     child: homeType.leftAlign ?
     Padding(
       padding: homeType.padding,
       child: Row(
         children: [
           Lottie.asset(
               'assets/lottie/${homeType.lottie}',
               width: mq.width * .35),
             SizedBox( width: 40,),

             Expanded(
               child: Text(
                 homeType.title,
                 style: GoogleFonts.domine(
                   textStyle: TextStyle(
                     fontSize: 20,
                     fontWeight: FontWeight.bold,
                     color: Colors.blueGrey.shade900,
                   ),
                 ),
                 maxLines: 2,
               ),
             ),
         ],
       ),
     ):
     Padding(
       padding: homeType.padding,
       child: Row(
         children: [
           Expanded(
             child: Text(
               homeType.title,
               style: GoogleFonts.domine(
                 textStyle: TextStyle(
                   fontSize: 20,
                   fontWeight: FontWeight.bold,
                   color: Colors.blueGrey.shade900,
                 ),
               ),
               maxLines: 2,
             ),
           ),
           SizedBox( width: 40,),
           Lottie.asset('assets/lottie/${homeType.lottie}',width: mq.width * .35),

         ],
       ),
     )




     );
  }
}