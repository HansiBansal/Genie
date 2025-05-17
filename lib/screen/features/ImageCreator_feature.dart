import 'package:flutter/material.dart';

class ImageCreatorFeature extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>_ImageCreatorFeatureState();
}

class  _ImageCreatorFeatureState  extends State{
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