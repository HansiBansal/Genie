import "package:chatbot_ai/helper/global.dart";
import "package:chatbot_ai/helper/pref.dart";
import "package:chatbot_ai/screen/splash_screen.dart";
import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:get/get_navigation/src/root/get_material_app.dart";

Future<void> main() async {
  //for fullscreen
  WidgetsFlutterBinding.ensureInitialized();

  Pref.initialize();

  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);


  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          elevation: 1,
          centerTitle: true,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Color(0xFF0D47A1)),
          titleTextStyle: TextStyle(
            color: Color(0xFF0D47A1),
            fontSize: 20,
            fontWeight: FontWeight.w500,
          )
        )
      ),



      home: Scaffold(
        body: SplashScreen(),
      ),
    );
  }

}