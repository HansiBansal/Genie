import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class Pref{
  static late Box _box;


  //accessible to anywhere
  static Future<void> initialize() async {
    WidgetsFlutterBinding.ensureInitialized();
    // for initializing hive to use app directory
    final dir = await getApplicationDocumentsDirectory();
    Hive.defaultDirectory = dir.path;


    _box = Hive.box(name: 'MyData');
  }

  //return boolean value
  static bool get showOnBoarding =>
      _box.get('showOnBoarding', defaultValue: true);

  static set showOnBoarding (bool value)  =>
      _box.put('showOnBoarding', value);




}