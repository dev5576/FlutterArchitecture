import 'package:flutter_archi/features/number_trivia/data/models/number_trivia_model.dart';
import 'package:flutter_archi/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final tNumberTriviaModel = NumberTriviaModel(text: 'test text', number: 1);

  test('should be a subclass of NumberTrivia Entity', () async {
    expect(tNumberTriviaModel, isA<NumberTrivia>());
  });
}
