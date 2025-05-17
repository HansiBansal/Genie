import 'package:flutter/material.dart';

class QRFeature extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>_QRFeatureState();
}

class  _QRFeatureState  extends State{
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