// main.dart

import 'package:flutter/material.dart';
import 'package:home_quiz_app/class/create.dart';
import 'package:home_quiz_app/class/pagehello.dart';
import 'package:home_quiz_app/class/quiz_question.dart';
import 'package:home_quiz_app/class/quizpag.dart';
import 'package:home_quiz_app/class/reuz.dart';
import 'package:home_quiz_app/core/config/get_it_config.dart';
import 'package:home_quiz_app/core/res/app_string.dart';
import 'package:home_quiz_app/model/quiz_model.dart';
import 'package:home_quiz_app/service/quiz_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

String usernew=core.get<SharedPreferences>().getString('username').toString();
String name=core.get<SharedPreferences>().getString('username').toString();

void main() {
   setup();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
 

  Widget build(BuildContext context) {
    return MaterialApp(
         debugShowCheckedModeBanner: false,
         
       home:
    core.get<SharedPreferences>().getString('username')==null
            ?
             SplashScreen()
            : CreateQuiz()
      );
    
  }
}





