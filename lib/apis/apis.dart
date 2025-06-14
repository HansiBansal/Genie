import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:http/http.dart';

class APIs{
  //get answers from google gemni
  //<String> return
  static Future<String> getAnswer(String question)
  async {
    try{
      final res =  await post(
          Uri.parse(
              "https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?key=AIzaSyCwfLkopP9e6qyaCQin8ixp1QSBjopINo0"),
          headers: {
            HttpHeaders.contentTypeHeader : 'application/json',
          }, body: jsonEncode({
        "contents": [{
          "parts":[{"text": question}]
        }]
      })

      );
      //log('res:${res.body}');
      final data = jsonDecode(res.body);
      // log('res:${data['candidates'][0]['content']['parts'][0]['text']}');
      log('res: $data');
      return data['candidates'][0]['content']['parts'][0]['text'];
    }catch(e){
      //any error occurs
      //functionname and e for error
      log('getAnswerE: $e');
      return'Something went wrong (try again after sometime)';
    }
  }
}