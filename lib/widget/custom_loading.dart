import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CustomLoading extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Lottie.asset('assets/lottie/loading.json', width: 100);
  }
  
}

