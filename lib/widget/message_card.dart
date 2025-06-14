import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:chatbot_ai/model/message.dart';
import 'package:flutter/material.dart';

import '../helper/global.dart';

class MessageCard  extends StatelessWidget{
  final Message message;
  const MessageCard({super.key, required this.message});
  @override
  Widget build(BuildContext context) {
    const r = Radius.circular(15);
    return message.msgType == MessageType.bot
     ? Row(
      children: [
      SizedBox(width: 6,),
      CircleAvatar(
        radius: 22,
        backgroundColor: Colors.white,
        child: Image.asset('assets/logo.png', width: 27),
      ),

      Container(
          constraints: BoxConstraints(maxWidth: mq.width * 0.70),
          margin: EdgeInsets.only(
            bottom: mq.height * .02,
            left: mq.width * .02
          ),
          padding: EdgeInsets.symmetric(
              vertical: mq.height * .01,
              horizontal: mq.width * .01,
          ),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black54),
              borderRadius: BorderRadius.only(
                topLeft: r,
                topRight: r,
                bottomRight: r,
              )
          ),
              // child: Text(message.msg,)
          child: message.msg.isEmpty ? AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  ' Please wait... ',
                  speed: const Duration(milliseconds: 100),
                ),
              ],

              //totalRepeatCount: 4,
              repeatForever: true,
              //pause: const Duration(milliseconds: 1000),
              //displayFullTextOnTap: true,
              //stopPauseOnTap: true,
              // controller: myAnimatedTextController
          ): Text(message.msg),
        )
      ],)

    : Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
      SizedBox(width: 6,),
        Container(
          constraints: BoxConstraints(maxWidth: mq.width*.6),
          margin: EdgeInsets.only(
              bottom: mq.height * .02,
              right: mq.width * .02
          ),
          padding: EdgeInsets.symmetric(
            vertical: mq.height * .01,
            horizontal: mq.width * .01,
          ),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black54),
              borderRadius: BorderRadius.only(
                topLeft: r,
                topRight: r,
                bottomLeft: r,
              )
          ),
            child: Text(message.msg)
        ),
        // child: Text(
            // message.msg
            // +
            // ' this is a avery big sentence and not able to fit in the screen' )),


        CircleAvatar(
          radius: 22,
          backgroundColor: Colors.white,
          child: Icon(Icons.person,color: Colors.blueGrey,size: 28,),
        ),
        SizedBox(width: 6,),

      ],);
  }
}