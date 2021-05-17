import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_archi/core/usecases/usecase.dart';
import 'package:meta/meta.dart';
import 'package:flutter_archi/core/error/failures.dart';
import 'package:flutter_archi/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:flutter_archi/features/number_trivia/domain/repositories/number_trivia_repository.dart';

class GetRandomNumberTrivia implements UseCase<NumberTrivia, NoParams> {
  final NumberTriviaRepository repository;

  GetRandomNumberTrivia(this.repository);

  @override
  Future<Either<Failure, NumberTrivia>> call(NoParams params) async {
    return await  repository.getRandomNumberTrivia();
  }
}

