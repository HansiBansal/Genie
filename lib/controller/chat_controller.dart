//default class
//class ChatController{}

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../model/message.dart';

class ChatController extends GetxController{
  final textC = TextEditingController();
  final list =<Message>[].obs;


  void askQuestion(){
    if(textC.text.trim().isNotEmpty){
      //textC.text = usermess
      list.add(Message(msg: textC.text, msgType: MessageType.user));

      //aibot
      list.add(Message(msg: 'I received your message', msgType: MessageType.bot));

      textC.text = '';
    }
  }
}