// class/create.dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:home_quiz_app/class/quizpag.dart';
import 'package:home_quiz_app/color/color_palete.dart';
import 'package:home_quiz_app/core/res/app_text_style.dart';
import 'package:home_quiz_app/main.dart';
import 'package:home_quiz_app/model/quiz_model.dart';
import 'package:home_quiz_app/service/quiz_service.dart';


PageController pageController = PageController();
class CreateQuiz extends StatefulWidget {
  CreateQuiz({super.key});

  @override
  State<CreateQuiz> createState() => _CreateQuizState();
}

class _CreateQuizState extends State<CreateQuiz> {
  TextEditingController question = TextEditingController();

  TextEditingController answer = TextEditingController();

  TextEditingController answer1 = TextEditingController();

  TextEditingController answer2 = TextEditingController();

  TextEditingController answer3 = TextEditingController();

  num indexOfCorrect = 4;

bool isCheckedA = false;

bool isCheckedB = false;

bool isCheckedC = false;

bool isCheckedD = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        width:double.infinity ,
              decoration: BoxDecoration(
                            color:  Colors.pink[100],
                                            
                           
                                            
                                            
                               gradient:  const LinearGradient(
                              colors: [thied,secondary],
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft,
                            ),
                          ),  
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Padding(
                padding: const EdgeInsets.only(right: 230.0,bottom: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => QuizPage(),
                        ));
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(child: Icon(Icons.home,color: Colors.white,),backgroundColor: primary,),
                  ),
                ),
              ),
            Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: SizedBox(
                width: 300,
                child: TextField(
                  controller: question,
                  decoration: InputDecoration(
                     filled: true,
                     hintText: "your question",
                    fillColor: Colors.white12,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: SizedBox(
                    width: 230,
                    child: TextField(
                      controller: answer,
                      decoration: InputDecoration(
                         filled: true,
                            fillColor: Colors.white,
                              hintText: "Answer A",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                       
                    ),
                  ),
                ),
                  Padding(
                    padding: EdgeInsets.only(top: 60,left: 180),
                   

                    child: Checkbox(
                      //  checkColor: thied, 
                    hoverColor: thied,
                      fillColor: MaterialStateProperty.resolveWith<Color?>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
      
        return primary;
      }
     
      return null; 
    },
  ),
                                    value: isCheckedA,
                                    onChanged: (bool? value) {
                    setState(() {
                      isCheckedA = value!;
                      indexOfCorrect=0;
                    });
                                    },),
                  ),
              ],
            ),


            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: SizedBox(
                    width: 230,
                    child: TextField(
                      controller: answer1,
                      decoration: InputDecoration(
                         filled: true,
                            fillColor: Colors.white,
                              hintText: "Answer B",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                       
                    ),
                  ),
                ),
                  Padding(
                    padding: EdgeInsets.only(top: 20,left: 180),
                   

                    child: Checkbox(
                      //  checkColor: thied, 
                    hoverColor: thied,
                      fillColor: MaterialStateProperty.resolveWith<Color?>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
      
        return primary;
      }
     
      return null; 
    },
  ),
                                    value: isCheckedB,
                                    onChanged: (bool? value) {
                    setState(() {
                      isCheckedB = value!;
                      indexOfCorrect=1;
                    });
                                    },),
                  ),
              ],
            ),
          Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: SizedBox(
                    width: 230,
                    child: TextField(
                      controller: answer2,
                      decoration: InputDecoration(
                         filled: true,
                            fillColor: Colors.white,
                              hintText: "Answer C",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                       
                    ),
                  ),
                ),
                  Padding(
                    padding: EdgeInsets.only(top: 20,left: 180),
                   

                    child: Checkbox(
                      //  checkColor: thied, 
                    hoverColor: thied,
                      fillColor: MaterialStateProperty.resolveWith<Color?>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
      
        return primary;
      }
     
      return null; 
    },
  ),
                                    value: isCheckedC,
                                    onChanged: (bool? value) {
                    setState(() {
                      isCheckedC = value!;
                      indexOfCorrect=2;
                    });
                                    },),
                  ),
              ],
            ),
           Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: SizedBox(
                    width: 230,
                    child: TextField(
                      controller: answer3,
                      decoration: InputDecoration(
                         filled: true,
                            fillColor: Colors.white,
                              hintText: "Answer D",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                       
                    ),
                  ),
                ),
                  Padding(
                    padding: EdgeInsets.only(top: 20,left: 180),
                   

                    child: Checkbox(
                      //  checkColor: thied, 
                    hoverColor: thied,
                      fillColor: MaterialStateProperty.resolveWith<Color?>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
      
        return primary;
      }
     
      return null; 
    },
  ),
                                    value: isCheckedD,
                                    onChanged: (bool? value) {
                    setState(() {
                      isCheckedD = value!;
                      indexOfCorrect=3;
                    });
                                    },),
                  ),
              ],
            ),
           Padding(
             padding: const EdgeInsets.only(top:88.0),
             child: InkWell(
              
                       onTap: () async {
              bool status = await QuizServiceImp().createNewQuiz(QuizModel(
                  question: question.text,
                  answer: [
                    answer.text,
                    answer1.text,
                    answer2.text,
                    answer3.text
                  ],
                  index_corect: indexOfCorrect
                   , outher: usernew));
              // core
              // .get<SharedPreferences>()
              // .getString('username').toString()));
             
              if (status) {
             
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text("Success"),
                  backgroundColor: Colors.green,
                  behavior: SnackBarBehavior.floating,
                ));
                  Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => QuizPage(),
                        ));
              } else {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text("Error "),
                  backgroundColor: Colors.red,
                  behavior: SnackBarBehavior.floating,
                ));
              }
              
                       },
                       child:  Container(
                        alignment: Alignment.center,
                        width: 287,
                        height: 60,
                        decoration:  BoxDecoration(
             
                        // border: Border.all(
                        //   color: primary,
                        //   width: 2.0,
                        // ),
                        borderRadius: BorderRadius.circular(30),
                      color: primary,
                      
                       //    gradient:const  LinearGradient(
                       //   colors: [secondary,thied],
                       //   begin: Alignment.topLeft,
                       //   end: Alignment.bottomRight,
                       // ),
                        ),
                        child: Text("addQuestion",style:subtitleTextStyle1 ,),
                      ),
                   ),
           ),
          ],
        ),
      ),
      // floatingActionButton:
      
    );
  }
}