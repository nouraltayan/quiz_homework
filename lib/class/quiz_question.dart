// class/quiz_question.dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';import 'package:flutter/material.dart';
import 'package:home_quiz_app/class/quizpag.dart';
import 'package:home_quiz_app/class/reuz.dart';
import 'package:home_quiz_app/color/color_palete.dart';
import 'package:home_quiz_app/main.dart';
import 'package:home_quiz_app/model/quiz_model.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage({super.key, required this.quiz});
  QuizModel quiz;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
        
      //   title:Text(quiz.question),
      // ),
      appBar: AppBar(leading:   InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => QuizPage(),
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
                ),backgroundColor: primary,),
      body: Stack(
        children: [
         

          Container(
            width: double.infinity,
            color: primary,
            child: Column(             
              children: [
              
                
                Container(
                             alignment: Alignment.center,
                            height: 150,
                            width: 315,
                            
                            child: 
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                               const  Icon(Icons.question_answer ,color: primary,),
                                Text(quiz.question),
                               
                              ],
                            ),
                            
                              decoration: BoxDecoration(
                                color:  Colors.pink[100],
                               borderRadius: BorderRadius.circular(30.0),
                                                
                               
                                                
                                                
                                   gradient:  const LinearGradient(
                                  colors: [thied,secondary],
                                  begin: Alignment.centerRight,
                                  end: Alignment.centerLeft,
                                ),
                              ),  
                              
                                                
                                                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Container(
                            
                      width: 270,
                               height: 300,
                              decoration: BoxDecoration(
                                  // color: thied.withOpacity(0.15),
                                 borderRadius: BorderRadius.circular(380.0),
                                    boxShadow: [
                      BoxShadow(
                        color: thied.withOpacity(0.5), 
                        blurRadius: 50.0, 
                        spreadRadius: 10.0, 
                        offset: const Offset(1, 50),
                      ),
                    ],                
                                 
                                ), 
                  
                            
                                child:   Expanded(
                    child: ListView.builder(
                          itemCount: quiz.answer.length,
                          itemBuilder: (context, index) {
                            
                            return Center(
                              child: ListTile(
                                        
                                        onTap: () {
                                           
                                          if (index == quiz.index_corect) {
                                               correctAnswers++;
                                            ScaffoldMessenger.of(context).showSnackBar(
                                              const SnackBar(
                                                behavior: SnackBarBehavior.floating,
                                                backgroundColor: Color.fromARGB(255, 43, 146, 46),
                                                content: Text(
                                                  "Correct Answer \t *_*",
                                      
                                                ),
                                              ),
                                    
                                            );
                                             Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) => QuizPage(),
                                                    
                                                    ));
                                     } 
                                          else {
                                            wrongAnswers++;
                                            ScaffoldMessenger.of(context).showSnackBar(
                                              const SnackBar(
                                                behavior: SnackBarBehavior.floating,
                                                backgroundColor: Color.fromARGB(255, 194, 61, 51),
                                                content: Text("Wrong Answer \t -_-"),
                                                 duration: Duration(seconds: 1)
                                              ),
                                            );
                                              Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) => QuizPage(),
                                                    
                                                    ));
                                         
                                          }
                                        },
                           
                                        subtitle: Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: Container(
                                            alignment: Alignment.center,
                                            width:34 ,
                                            height: 40,
                                            decoration: BoxDecoration(
                                                            // color: Colors.white,
                                                            borderRadius: BorderRadius.circular(15),
                                                                  color: Colors.white,
                                                                  ),
                                                  // 
                                            child: Text(quiz.answer[index],style:const TextStyle(
                                                          color: Colors.black,)),
                                          ),
                                        ),
                                    
                                               
                                        
                                      ),
                            );
                                  
                                
                              
                            
                          },
                          
                        
                        ),
                  ),
                  ),
                ),
                  Padding(
                    padding: const EdgeInsets.only(left: 200.0),
                    child: Container(
                    width: 75,
                    height: 75,
                    decoration: const BoxDecoration(
                          image:  DecorationImage(
                               image: AssetImage('asset/image/img2.png'),
                               fit: BoxFit.cover,
                                   
                                   
                             ),
                                
                    ),
                                   ),
                  ),
              ],
              
            ),
          ),

          
        ],
      ),
    );
  }
}
