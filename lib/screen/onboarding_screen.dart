import 'package:chatbot_ai/model/onBoard.dart';
import 'package:chatbot_ai/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';

import '../helper/global.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _OnBoardingScreen();
}

class _OnBoardingScreen extends State {

  @override
  Widget build(BuildContext context) {
    final _pagecontroller = PageController();

    final list =[
      onBoard(
          title: "Your AI bestie is here \n Ask me anything you want!",
          lottie: 'ImageToReality'
      ),
      onBoard(
          title: "Imagine it — I’ll create it \n Just say the word",
          lottie: 'askmeanything'
      ),
      onBoard(
          title: "Your AI bestie is here \n Ask me anything you want!",
          lottie: 'ImageToReality'
      ),];
      mq = MediaQuery.sizeOf(context);

    return Scaffold(
      body: PageView.builder(
          controller: _pagecontroller,
          itemCount: list.length,
          itemBuilder: (context, index){
            final isLast = index == list.length-1;
        return Column(
          children: [
            Container(
              height: mq.height * 0.5,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF0D47A1), // Dark Blue
                    Color(0xFF1976D2),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Center(
                child: Lottie.asset('assets/lottie/${list[index].lottie}.json'),
              ),
            ),

            SizedBox(height: mq.height * 0.06),

            Container(
              width: mq.width * 0.8,
              child: Text(
                list[index].title,
                textAlign: TextAlign.center,
                style: GoogleFonts.domine(
                  textStyle: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey.shade900,
                  ),
                ),
              ),
            ),

            SizedBox(height: mq.height * 0.06),

            Wrap(
              spacing: 4,
              children: List.generate(
                list.length,
                    (i) => Container(
                      //dot indicator section
                      //condition ? value_if_true : value_if_false
                      width: i == index ? 15 : 5,
                      height: 5,
                      decoration: BoxDecoration(
                        color: Color(0xFF1976D2),
                        borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
            ),

            Spacer(),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        backgroundColor: Color(0xFF1976D2),
                        shadowColor: Colors.blueAccent,
                        padding: EdgeInsets.all(16),
                        elevation: 4,
                        minimumSize: Size(mq.width * 0.2, 25)
                    ),
                    onPressed: () {
                      if(index==0){

                      }
                      else{
                        _pagecontroller.previousPage(
                            duration: Duration(milliseconds: 600),
                            curve: Curves.ease);
                      }
                    },

                    child: Icon(Icons.arrow_back, color: Colors.white),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        backgroundColor: Color(0xFF1976D2),
                        shadowColor: Colors.blueAccent,
                        padding: EdgeInsets.all(16),
                        elevation: 4,
                        minimumSize: Size(mq.width * 0.2, 25)

                    ),
                    onPressed: () {
                      if(isLast){
                        // Navigator.of(context).pushReplacement(
                        //     MaterialPageRoute(
                        //         builder: (_) => HomeScreen()));

                        Get.off(()=> HomeScreen());

                      }
                      else{
                        _pagecontroller.nextPage(
                            duration: Duration(milliseconds: 600),
                            curve: Curves.ease);
                      }

                    },
                    child: Icon(Icons.arrow_forward, color: Colors.white),
                  ),
                ],
              ),
            ),

            SizedBox(height: 30),
          ],
        );
      })
    );
  }
}
