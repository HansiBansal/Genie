import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:http/http.dart';

class APIs{
  //get answers from google gemni
  static Future<void> getAnswer(String question)
  async {
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
    log('res:${data['candidates'][0]['content']['parts'][0]['text']}');
  }
}