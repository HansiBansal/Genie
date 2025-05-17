import 'package:flutter/material.dart';

class LangTransFeature extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>_LangTransFeatureState();
}

class  _LangTransFeatureState  extends State{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat with AI Assistant'),
      ),
      body: ListView(
        children: [],
      ),
    );
  }

}