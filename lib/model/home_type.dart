import 'package:flutter/cupertino.dart';

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

}