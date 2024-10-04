import 'package:blott/features/home/data/models/news_model.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';

abstract class HomeRepository {
  Future<Either<Failure, List<NewsModel>>> getNews();
}
