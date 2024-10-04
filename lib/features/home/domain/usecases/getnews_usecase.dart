import 'package:blott/features/home/data/models/news_model.dart';
import 'package:blott/features/home/domain/repositories/home_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';

@lazySingleton
class GetNewsUseCase extends UseCase<List<NewsModel>, NoParams> {
  GetNewsUseCase({required this.repository});
  final HomeRepository repository;

  @override
  Future<Either<Failure, List<NewsModel>>> call(NoParams params) {
    return repository.getNews();
  }
}
