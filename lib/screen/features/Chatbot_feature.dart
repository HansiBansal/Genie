import 'package:chatbot_ai/controller/chat_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatBotFeature extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>_ChatBotFeatureState();
}

class  _ChatBotFeatureState  extends State{
  //instance variable of textc chatcontroller
  //can be called in only this screen
  final _c = ChatController();



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
                //data store
                controller: _c.textC,
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
                onPressed: _c.askQuestion,
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
        child: Obx( ()=>
           ListView(
            children: _c.list.map((e)=> Text(e.msg)).toList(),
          ),
        ),
      ),
    );
  }

}