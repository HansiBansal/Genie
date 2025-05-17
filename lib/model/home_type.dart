import 'package:chatbot_ai/screen/features/Chatbot_feature.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../screen/features/ImageCreator_feature.dart';
import '../screen/features/LanguageTrans_feature.dart';
import '../screen/features/QR_feature.dart';

enum HomeType{ChatBot,ImageCreator,LangTrans,QR}

extension MyHomeType on HomeType{
  //title
  String get title => switch (this){
    //HomeType.ChatBot => throw UnimplementedError(),
    HomeType.ImageCreator => 'Image Creator',
    HomeType.LangTrans => 'Language Translator',
    HomeType.QR => 'QR Generator',
    HomeType.ChatBot => 'AI ChatBot',
  };

  //lottie
  String get lottie => switch (this){
    HomeType.ImageCreator => 'ImageCreator.json',
    HomeType.LangTrans => 'LangTrans.json',
    HomeType.QR => 'QR.json',
    HomeType.ChatBot => 'ChatBot.json',
  };

  bool get leftAlign => switch(this){

    HomeType.ChatBot => true,
    HomeType.ImageCreator => false,
    HomeType.LangTrans => true,
    HomeType.QR => false,
  };

  EdgeInsets get padding => switch(this){
    HomeType.ChatBot => EdgeInsets.zero,
    HomeType.ImageCreator => EdgeInsets.all(10),
    HomeType.LangTrans => EdgeInsets.all(10),
    HomeType.QR => EdgeInsets.all(10),
  };

  //to create a fn we added  ()=>
  //before that it was just a navigation
  VoidCallback get onTap => switch(this){
    HomeType.ChatBot => () => Get.to(()=> ChatBotFeature()),
    HomeType.ImageCreator => () => Get.to(()=> ImageCreatorFeature()),
    HomeType.LangTrans => () => Get.to(()=> LangTransFeature()),
    HomeType.QR => () => Get.to(()=> QRFeature()),
  };

}