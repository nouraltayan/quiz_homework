// class/reuz.dart

import 'package:flutter/material.dart';
import 'package:home_quiz_app/class/create.dart';
import 'package:home_quiz_app/class/quizpag.dart';
import 'package:home_quiz_app/color/color_palete.dart';
import 'package:home_quiz_app/core/config/get_it_config.dart';
import 'package:home_quiz_app/core/res/app_text_style.dart';

import 'package:shared_preferences/shared_preferences.dart';

int selectedAnswerIndex = 0;
double correctAnswers = 0;
double wrongAnswers = 0;
// PageController pageController = PageController();

class reuz extends StatelessWidget {
  const reuz({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body:Container(
      
        width: 350,
        color:primary,
         
         
        child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
          children: [
        
           Row(
                             mainAxisAlignment: MainAxisAlignment.start,
                             children: [
       Padding(
         padding: const EdgeInsets.only(top:1,left: 20),
         child: Container(
          padding: const EdgeInsets.only(bottom:30,right: 30),
          
                           width: 120,
                           height: 120,
                           decoration:const  BoxDecoration(
                  
          // borderRadius: BorderRadius.circular(50),
                 
          image:   DecorationImage(
                 image: AssetImage('asset/image/image6.png'),
                //  fit: BoxFit.cover,
              
                        
               ),
                          
               
          
                           ),
                       child: InkWell( onTap: (){
                                          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => QuizPage(),
              ));   
                            
                   
                  },
                   child: const Icon(Icons.arrow_back ,color: thied,size:24 ,)
                   ),
                          ),
       ),
         Padding(
                   padding: const EdgeInsets.only(left: 110,top: 70),
                   child: Container(
                                                           alignment: Alignment.topLeft,
                   
                                     width:75,
                                     height: 75,
                                     decoration:  BoxDecoration(
                            
                                      borderRadius: BorderRadius.circular(180),
                           
                                       image:  const DecorationImage(
                                              image: AssetImage('asset/image/image7.png'),
                                              fit: BoxFit.cover,
                                           
                                  
                                            ),
                                    
                           
                                       
                                     ),
                                                    
                                    ),
                 ),
                             ],
                           ),    
                        
      
                       
                    //  ------------------------------------------------
                      Container(
                        
                         width: 270,
                         height: 400,
                        decoration: BoxDecoration(
                            // color: thied.withOpacity(0.15),
                           borderRadius: BorderRadius.circular(380.0),
                              boxShadow: [
                BoxShadow(
                  color: thied.withOpacity(0.5), 
                  blurRadius: 50.0, 
                  spreadRadius: 10.0, 
                  offset: const Offset(10, 100),
                ),
              ],                
                           
                          ),  
      
      
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                  
                            
                              
                                  Padding(
                                  padding: const EdgeInsets.only(top: 75.0 ),
                                  child: Container(
                                            
                                        width: 55,
                                        height: 55,
                                        decoration:  BoxDecoration(
                                             
                                         borderRadius: BorderRadius.circular(180),
                                            
                                          image:  const DecorationImage(
                                                 image: AssetImage('asset/image/image7.png'),
                                                 fit: BoxFit.cover,
                                              
                                     
                                               ),
                                       
                                            
                                          
                                        ),
                                 
                                       ),
                                  ), 
                                            
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 100,right: 70),
                                  child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    
                                    Container(
                                        alignment: Alignment.center,
                                    width: 110,
                                    height: 110,
                                    decoration:  BoxDecoration(
                                             
                                     borderRadius: BorderRadius.circular(180),
                                            
                                      image:  const DecorationImage(
                                             image: AssetImage('asset/image/image9.png'),
                                             fit: BoxFit.cover,
                                          
                             
                                           ),
                               
                                            
                                      
                                    ),
                             
                               ),
                                 Container(
                                        alignment: Alignment.center,
                                    width: 140,
                                    height: 140,
                                    decoration:  BoxDecoration(
                                             
                                     borderRadius: BorderRadius.circular(180),
                                            
                                      image:  const DecorationImage(
                                             image: AssetImage('asset/image/image9.png'),
                                             fit: BoxFit.cover,
                                          
                             
                                           ),
                               
                                            
                                      
                                    ),
                             
                               ),
                                   Container(
                                  
                                  width: 90,
                                  height: 90,
                                  decoration:  BoxDecoration(
                                         
                                   borderRadius: BorderRadius.circular(180),
                                        
                                  image:  const DecorationImage(
                                         image: AssetImage('asset/image/image8.png'),
                                         fit: BoxFit.cover,
                                      
                                               
                                       ),
                                                 
                                        
                                  
                                  ),
                                               
                                                 ),
                                  Container(
                                  alignment: Alignment.center,
                                  width: 80,
                                  height: 80,
                                  decoration:  BoxDecoration(
                                         
                                   borderRadius: BorderRadius.circular(180),
                                        
                                  image:  const DecorationImage(
                                         image: AssetImage('asset/image/imagestar.png'),
                                         fit: BoxFit.cover,
                                      
                                               
                                       ),
                                                 
                                        
                                  
                                  ),
                                               
                                                 ),
                                                 Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                   children: [
                                   Text("Your Score ",style: subtitleTextStyle3),
                                  Text(" 100",style: subtitleTextStyle3),
                                  
                                   ],
                                  
                                                 ),
                                  ],),
                                ),
                                  
                                  
                                             
                              ],
                            ),
                        
                              Padding(
                                            padding: const EdgeInsets.only(left: 1.0),
                                            child: Container(
                         alignment: Alignment.center,
                        height: 150,
                        width: 315,
                        
                        child: 
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:  [
                            Row (
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              
                              children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(Icons.person ,color: primary,),
                                  Text("outher : \t"+name),
                                 
                                ],
                              ),
                              Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                            
                                children: [
                                  
                                  Row(
                                    children: [
                                      Icon(Icons.close,color: Colors.red[400]),
                                       Text(wrongAnswers.toString()),
                                    ],
                                  ),
                                  Text("wrongAnswers"),
                                 
                                          
                                ],
                              ),
                                          
                               
                              ],
                            ),
                                
                             Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                
                              children: [
                               Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   Icon(Icons.check,color: Colors.green[800],),
                                   Text(correctAnswers.toString()),
      
                                 ],
                               ),
                                      
                              const Text("correctAnswers\t"),
                              ],
                            ),
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
                                          ),
                          ],
                        ),
                      ),
                  
                
          
                // --------------------------------------------
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   InkWell(
                    child: const Padding(
                      padding: EdgeInsets.only(left: 140.0,top: 20),
                      child: Align(alignment: Alignment.bottomCenter, child: CircleAvatar(child: Icon(Icons.create,color: primary,) ,backgroundColor: secondary,)),
                    ),
                   
                     onTap: (){
                                
                               Navigator.push(
                                 context,
                                 MaterialPageRoute(
                    builder: (context) => CreateQuiz(),
                                 ));    
                       
                      },
                                 ),
      
                                 InkWell(
                child: const Padding(
                  padding: EdgeInsets.only(left: 19.0,top: 20),
                  child: Align(alignment: Alignment.bottomCenter, child: CircleAvatar(child: Icon(Icons.home,color: secondary,) ,backgroundColor: primary,)),
                ),
      
                 onTap: (){
                            
                           Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => QuizPage(),
              ));    
                   
                  },
              ),
                 ],
               ),
                
           
          ],
      
        ),
      )
    );
  }
}