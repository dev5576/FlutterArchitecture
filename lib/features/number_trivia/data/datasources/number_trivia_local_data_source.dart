import 'package:flutter_archi/features/number_trivia/data/models/number_trivia_model.dart';

abstract class NumberTriviaLocalDataSource {
  Future<NumberTriviaModel> getLastNumberTrivia(int number);

  Future<void> getCacheNumberTrivia(NumberTriviaModel triviaToCache);
}
