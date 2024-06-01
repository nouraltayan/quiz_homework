// class/LogInPage.dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:home_quiz_app/class/create.dart';
import 'package:home_quiz_app/color/color_palete.dart';
import 'package:home_quiz_app/core/res/app_text_style.dart';
import 'package:home_quiz_app/main.dart';
import 'package:home_quiz_app/model/user_login_model.dart';
import 'package:home_quiz_app/service/auth_service.dart';


TextEditingController username = TextEditingController();

class LogInPage extends StatelessWidget {
  LogInPage({super.key});

 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        width:double.infinity ,
        child: Column(
          children: [
        
             Stack(
               clipBehavior: Clip.none,
               children: [
              
                 Container(
                  width: 310,
                  height: 290,
                  decoration: const BoxDecoration(
                        image:  DecorationImage(
                             image: AssetImage('asset/image/image1.png'),
                             fit: BoxFit.cover,
                          
                 
                           ),
                   // border: Border.all(
                   //   color: primary,
                   //   width: 2.0,
                   // ),
                            //  boxShadow: const [
                //   BoxShadow (
                //     // color: Colors.black.withOpacity(0.5),
                //     spreadRadius: 5,
                //     blurRadius: 40,
                //     offset: Offset(0, 3), 
                //   ),
                // ],
        
                    //    gradient:const  LinearGradient(
                    //   colors: [thied,secondary],
                    //   begin: Alignment.topLeft,
                    //   end: Alignment.bottomRight,
                    // ),
                  ),
                                 
                 ),
                  Padding(
                    padding: const EdgeInsets.only(left:23),
                    child: Container(
                      
                    width: 290,
                    height: 270,
                    decoration: const BoxDecoration(
                          image:  DecorationImage(
                               image: AssetImage('asset/image/image2.png'),
                               fit: BoxFit.cover,
                            
                                   
                             ),
                     
                    ),
                                   ),
                  ),
                       Container(
                        alignment: Alignment.topLeft,
                  width: 90,
                  height: 90,
                  decoration: const BoxDecoration(
                        image:  DecorationImage(
                             image: AssetImage('asset/image/image1.png'),
                             fit: BoxFit.cover,
                          
                 
                           ),
                   
                  ),
                 ),   
                  Padding(
                    padding: const EdgeInsets.only(left: 140.0,top: 240),
                    child: Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                          image:  DecorationImage(
                               image: AssetImage('asset/image/image3.png'),
                               fit: BoxFit.cover,
                 
                                   
                             ),
              
                    ),
                                   ),
                  ),   
                  Padding(
                    padding: const EdgeInsets.only(left: 250.0,top: 35),
                    child: Container(
                    width: 20,
                    height: 20,
                    decoration: const BoxDecoration(
                          image:  DecorationImage(
                               image: AssetImage('asset/image/image4.png'),
                               fit: BoxFit.cover,
                            
                                   
                             ),
                     
                    ),
                                   ),
                  ), 
             Padding(
               padding: const EdgeInsets.only(left: 120.0,top: 120),
               child: Text("LOGIN",style: subtitleTextStyle2),
             ),
        
               ],
             ),
            //  -----------------------------------------------------------------------------------------------------------------------
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
              
                 width: 287,
                height: 60,
                child: TextField(
                  
                  controller: username,
                
                  
                  decoration: InputDecoration(
                    hintText: "username",
                
                    prefixIcon: const Padding(
                      padding:  EdgeInsets.only(left: 20 ,right: 20),
                      child: Icon(Icons.mail,color: primary,),
                    ) ,
                      filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                      color: primary, 
                      width: 3.0
                                ),
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
                      onTap: () async {
                        bool status = await AuthSeviceImp().logIn(
              UserLoginModel(username: username.text));
                      
                        if (status) {
                        
                         usernew=username.text;
                         ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("hello $usernew"),
                backgroundColor: Colors.green,
                behavior: SnackBarBehavior.floating,
              ),
            );
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CreateQuiz(),
                ));
                        } else {
            ScaffoldMessenger.of(context).showSnackBar(
            const  SnackBar(
                content: Text("Failed to Log In"),
                backgroundColor: Colors.red,
                behavior: SnackBarBehavior.floating,
              ),
            );
                        }
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 287,
                        height: 60,
                        decoration:  BoxDecoration(
             
                        // border: Border.all(
                        //   color: primary,
                        //   width: 2.0,
                        // ),
                        borderRadius: BorderRadius.circular(30),
                      
                      
               gradient:const  LinearGradient(
              colors: [secondary,thied],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
                        ),
                        child: Text("LOGIN",style:subtitleTextStyle1 ,),
                      )
                      ),
        
        
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 250.0 ,top:75 ),
                              child: Container(
                                
                                alignment: Alignment.bottomLeft,
                                                  
                                              width: 110,
                                              height: 110,
                                              decoration: const BoxDecoration(
                                                    image:  DecorationImage(
                                 image: AssetImage('asset/image/image5.png'),
                                //  fit: BoxFit.cover,
                              
                                             
                               ),
                                               
                                              ),
                                             ),
                            ),
                          ), 
            
          ],
          
        ),
      ),
    
    );
  }
}
