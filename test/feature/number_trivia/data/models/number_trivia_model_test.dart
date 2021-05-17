import 'dart:convert';

import 'package:flutter_archi/features/number_trivia/data/models/number_trivia_model.dart';
import 'package:flutter_archi/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final tNumberTriviaModel = NumberTriviaModel(text: 'test text', number: 1);

  test('should be a subclass of NumberTrivia Entity', () async {
    expect(tNumberTriviaModel, isA<NumberTrivia>());
  });

  group('fromJson', () {
    test('should return a valid model when the JSON number is an integer',
        () async {
      final Map<String, dynamic> jsonMap = json.decode(fixture('trivia.json'));

      final result = NumberTriviaModel.fromJson(jsonMap);
      expect(result, tNumberTriviaModel);
    });
  });

  group('fromJson', () {
    test(
        'should return a valid model when the JSON number is regarded as double',
        () async {
      final Map<String, dynamic> jsonMap =
          json.decode(fixture('trivia_double.json'));

      final result = NumberTriviaModel.fromJson(jsonMap);
      expect(result, tNumberTriviaModel);
    });
  });

  group('toJson', () {
    test('should return a JSON map containing the proper data', () async {
      final result = tNumberTriviaModel.toJson();
      final expectedMap = {
        "text": "test text",
        "number": 1,
      };
      expect(result, expectedMap);
    });
  });
}
