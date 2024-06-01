// class/quizpag.dart


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_quiz_app/class/pagehello.dart';
import 'package:home_quiz_app/class/quiz_question.dart';
import 'package:home_quiz_app/class/reuz.dart';
import 'package:home_quiz_app/color/color_palete.dart';
import 'package:home_quiz_app/core/config/get_it_config.dart';
import 'package:home_quiz_app/core/res/app_string.dart';
import 'package:home_quiz_app/core/res/app_text_style.dart';
import 'package:home_quiz_app/model/quiz_model.dart';
import 'package:home_quiz_app/service/quiz_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
String name=core.get<SharedPreferences>().getString('username').toString();

class QuizPage extends StatelessWidget {
  const QuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( backgroundColor: primary,
        title:  Text(
              HELLO,
               style: headlineTextStyle,
            ),),
      endDrawer: Drawer(
      child:  Column(
              children: [

                   UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color:primary,
                ),
                
                  currentAccountPicture: CircleAvatar(
                    child: ( Icon(Icons.person,color: secondary,size: 45,)),
                   
                  ),
                  
                  accountName: Text("$name"),
                  accountEmail: Text("$name@gmail.com")),
         
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  title: Text("Setting" , style: TextStyle(color: primary),),
                trailing: CircleAvatar(child: Icon(Icons.arrow_back,)),
                
                ),
              ),
              // Spacer(),
             
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => reuz(),
                        ));
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: 
                     ListTile(
                title: Text(
                  "result",
                  style: TextStyle(color: primary),
                ),
                trailing: CircleAvatar(child: Icon(Icons.menu)),
              ),
                  ),
                ),
                InkWell(
                  onTap: () {
                     core.get<SharedPreferences>().clear();
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SplashScreen(),
                        ));
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child:
                     ListTile(
                title: Text(
                  "LogOut",
                  style: TextStyle(color: primary),
                ),
                trailing:  CircleAvatar(child: Icon(Icons.logout)),
              ),
                  ),
                ),
              ],
            ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: primary,
          child: Column(
            children: [
             
          
              FutureBuilder(
                future: QuizServiceImp().getAllQuiz(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<QuizModel> products =
                        snapshot.data as List<QuizModel>;
                
                    return StatefulBuilder(builder: (context, refresh) {
                      return Column(
                        children: [
                      
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: 550,
                              width: double.infinity,
                              child: GridView.builder(
                                itemCount: products.length,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                        mainAxisSpacing: 15,
                                        crossAxisSpacing: 15),
                                itemBuilder: (context, index) {
                                  return InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => DetailsPage(
                                              quiz: products[index],),
                                          ));
                                    },
                                    child: Expanded(
                                      child: Card(
                                         color: Colors.pink[100],
                                        child: Center(
                                          child: Container(
                                            
                                          
                                            child: Text("question:$index"),
                                          
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          )
                     
                        ],
                      );
                    });
                  } else {
                    return const Column(
                      children: [
                        
                        Center(child: LinearProgressIndicator())
                      ],
                    );
                  }
                },
              )
            ],
          ),
        ),
      ),
        // floatingActionButton:Icon(Icons.arrow_back,size: 20,),
    );
  }
}
