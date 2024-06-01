// service/auth_service.dart

import 'package:dio/dio.dart';
import 'package:home_quiz_app/core/config/get_it_config.dart';

import 'package:home_quiz_app/model/user_login_model.dart';
import 'package:shared_preferences/shared_preferences.dart';


abstract class AuthService {
  Dio req = Dio();
  late Response response;
  String baseurl = "https://6656318a9f970b3b36c498e1.mockapi.io/api/v1/UserLoginMode";

  Future<bool> logIn(UserLoginModel user);
}

class AuthSeviceImp extends AuthService {
  @override
  Future<bool> logIn(UserLoginModel user) async {
      try {
      response = await req.post(baseurl, data: user.toMap());
      if (response.statusCode == 201) {
            //    bb
            // .get<SharedPreferences>()
            // .setString('token',user.username );
         core.get<SharedPreferences>().setString('username',user.username );

        return true;
      } else {
        return false;
      }
    } on DioException catch (e) {
      print(e.message);
      return false;
    }
  }
  
}
