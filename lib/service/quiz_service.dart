// service/quiz_service.dart
import 'package:dio/dio.dart';

import 'package:home_quiz_app/model/quiz_model.dart';


abstract class QuizService {
  Dio dio = Dio();
  late Response response;
  String baseurl = "https://6656318a9f970b3b36c498e1.mockapi.io/api/v1/QuizMode";

  Future<bool> createNewQuiz(QuizModel quiz);

  Future<List<QuizModel>> getAllQuiz();
}

class QuizServiceImp extends QuizService {
  @override
  Future<bool> createNewQuiz(QuizModel quiz) async {
    try {

      response = await dio.post(baseurl, data: quiz.toMap());
      if (response.statusCode == 201) {
        return true;
      } else {
        return false;
      }
    } on DioException catch (e) {
      print(e.message);
      return false;
    }
  }

  @override
  Future<List<QuizModel>> getAllQuiz() async {
    try {
      response = await dio.get(baseurl);
      print(response);
      if (response.statusCode == 200) {
        List <QuizModel> question =List.generate(
      response.data.length,
      (index) => QuizModel.fromMap(
        response.data[index],),);
     
      return question;
      }
       else
        {

        return [];
      }
    } on DioException catch (e) {
      print(e.message);
      return [];
    }
  }
}
