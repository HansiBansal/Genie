import 'package:flutter/material.dart';

class ChatBotFeature extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>_ChatBotFeatureState();
}

class  _ChatBotFeatureState  extends State{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          //backgroundColor:Color(0xFF1976D2),
        title: Text('Chat with AI Assistant'),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        //symmetric: hotizontal paddidng
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          children: [
          //req maximum space = textformfield
          //therfore using expanded bec it takes max space available
          Expanded(
              child: TextFormField(
                textAlign: TextAlign.center,
            //if we tap outside the box the written cursor will go down
            onTapOutside: (e) => FocusScope.of(context).unfocus(),
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              hintText: 'ASK ME ANYTHING...',
              hintStyle: TextStyle(color: Colors.grey[600]),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide.none,

              //contentPadding: EdgeInsets.symmetric(vertical: 12,horizontal: 20),

            )),
          )),
            CircleAvatar(
              backgroundColor: Colors.transparent,
              child: IconButton(
                onPressed: (){},
                icon: Icon(
                  Icons.rocket_launch_rounded,
                  color: Colors.white, size: 28,
                ),
              ),
            )
        ],),
      ),
      body: Container(
        color: Color(0xFF1976D2),
        child: ListView(
          children: [],
        ),
      ),
    );
  }

}