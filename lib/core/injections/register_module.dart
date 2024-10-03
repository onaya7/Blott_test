import 'package:blott/core/constants/env.dart';
import 'package:dio/dio.dart';
import 'package:dio_http_cache_fix/dio_http_cache.dart';
import 'package:flutternativedata/flutternativedata.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

@module
abstract class RegisterModule {
  Box<dynamic> get box => Hive.box(Env.blottDb);
  InternetConnectionChecker get internetConnectionChecker =>
      InternetConnectionChecker();
  DioCacheManager get dioCacheManager => DioCacheManager(
        CacheConfig(),
      );
  Dio get dio => Dio();
  Flutternativedata get flutternativedata => Flutternativedata();
}
