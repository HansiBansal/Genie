//default class
//class ChatController{}

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../apis/apis.dart';
import '../model/message.dart';

class ChatController extends GetxController{
  final textC = TextEditingController();

  final scrollC = ScrollController();


  //default mess when open chatbot
  final list =<Message>[Message(msg: 'Hello, How i can help you?', msgType: MessageType.bot)].obs;


  Future<void> askQuestion() async{
    if(textC.text.trim().isNotEmpty){
      //textC.text = usermess
      list.add(Message(msg: textC.text, msgType: MessageType.user));
      //dummy message till the output is shown
      list.add(Message(msg: '', msgType: MessageType.bot));
      _scrollDown();


      final res = await APIs.getAnswer(textC.text);
      //aibot
      list.removeLast(); //remove the dummy message and then add the real response
      list.add(Message(msg: res, msgType: MessageType.bot));
      _scrollDown();

      textC.text = '';
    }
  }

  void _scrollDown(){
    scrollC.animateTo(
        scrollC.position.maxScrollExtent,
        duration: Duration(milliseconds: 500), curve: Curves.ease);
  }
}