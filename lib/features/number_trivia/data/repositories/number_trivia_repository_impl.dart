import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_archi/core/error/failures.dart';
import 'package:flutter_archi/core/platform/network_info.dart';
import 'package:flutter_archi/features/number_trivia/data/datasources/number_trivia_local_data_source.dart';
import 'package:flutter_archi/features/number_trivia/data/datasources/number_trivia_remote_data_source.dart';
import 'package:flutter_archi/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:flutter_archi/features/number_trivia/domain/repositories/number_trivia_repository.dart';

class NumberTriviaRepositoryImpl implements NumberTriviaRepository {
  NumberTriviaRemoteDataSource remoteDataSource;
  NumberTriviaLocalDataSource localDataSource;

  NumberTriviaRepositoryImpl.name(
      {@required this.remoteDataSource,
      @required this.localDataSource,
      @required this.networkInfo});

  NetworkInfo networkInfo;

  @override
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int number) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia() {
    throw UnimplementedError();
  }
}
