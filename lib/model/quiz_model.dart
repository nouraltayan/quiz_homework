// model/quiz_model.dart
// ignore_for_file: public_member_api_docs, sort_constructors_first// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class QuizModel {
  String question;
  List<dynamic> answer;
  num index_corect;
  String outher;
  QuizModel({
    required this.question,
    required this.answer,
    required this.index_corect,
    required this.outher,
  });

  QuizModel copyWith({
    String? question,
    List<dynamic>? answer,
    num? index_corect,
    String? outher,
  }) {
    return QuizModel(
      question: question ?? this.question,
      answer: answer ?? this.answer,
      index_corect: index_corect ?? this.index_corect,
      outher: outher ?? this.outher,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'question': question,
      'answer': answer,
      'index_corect': index_corect,
      'outher': outher,
    };
  }

  factory QuizModel.fromMap(Map<String, dynamic> map) {
    return QuizModel(
      question: map['question'] as String,
      answer: List<dynamic>.from((map['answer'] as List<dynamic>),),
      index_corect: map['index_corect'] as num,
      outher: map['outher'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory QuizModel.fromJson(String source) => QuizModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'QuizModel(question: $question, answer: $answer, index_corect: $index_corect, outher: $outher)';
  }

  @override
  bool operator ==(covariant QuizModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.question == question &&
      listEquals(other.answer, answer) &&
      other.index_corect == index_corect &&
      other.outher == outher;
  }

  @override
  int get hashCode {
    return question.hashCode ^
      answer.hashCode ^
      index_corect.hashCode ^
      outher.hashCode;
  }
}
