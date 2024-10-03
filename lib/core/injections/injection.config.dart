// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:blott/core/injections/register_module.dart' as _i207;
import 'package:blott/core/local_data/local_data_storage.dart' as _i389;
import 'package:blott/core/network_info/network_info.dart' as _i224;
import 'package:dio/dio.dart' as _i361;
import 'package:dio_http_cache_fix/dio_http_cache.dart' as _i633;
import 'package:flutternativedata/flutternativedata.dart' as _i855;
import 'package:get_it/get_it.dart' as _i174;
import 'package:hive_flutter/hive_flutter.dart' as _i986;
import 'package:injectable/injectable.dart' as _i526;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i973;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt init(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  gh.factory<_i986.Box<dynamic>>(() => registerModule.box);
  gh.factory<_i973.InternetConnectionChecker>(
      () => registerModule.internetConnectionChecker);
  gh.factory<_i633.DioCacheManager>(() => registerModule.dioCacheManager);
  gh.factory<_i361.Dio>(() => registerModule.dio);
  gh.factory<_i855.Flutternativedata>(() => registerModule.flutternativedata);
  gh.lazySingleton<_i224.NetworkInfo>(
      () => _i224.NetworkInfoImpl(gh<_i973.InternetConnectionChecker>()));
  gh.lazySingleton<_i389.LocalDataStorage>(
      () => _i389.LocalDataStorageImpl(gh<_i986.Box<dynamic>>()));
  return getIt;
}

class _$RegisterModule extends _i207.RegisterModule {}
