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
import 'package:blott/core/services/localnotification_service.dart' as _i13;
import 'package:blott/features/auth/presentation/bloc/auth_bloc.dart' as _i622;
import 'package:blott/features/home/data/datasources/home_remote_datasource.dart'
    as _i606;
import 'package:blott/features/home/data/repositories/home_repository_impl.dart'
    as _i783;
import 'package:blott/features/home/domain/repositories/home_repository.dart'
    as _i698;
import 'package:blott/features/home/domain/usecases/getnews_usecase.dart'
    as _i664;
import 'package:blott/features/home/presentation/bloc/home_bloc.dart' as _i634;
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
  gh.lazySingleton<_i13.LocalNotificationServices>(
      () => _i13.LocalNotificationServices());
  gh.lazySingleton<_i622.AuthBloc>(() => _i622.AuthBloc());
  gh.lazySingleton<_i224.NetworkInfo>(
      () => _i224.NetworkInfoImpl(gh<_i973.InternetConnectionChecker>()));
  gh.lazySingleton<_i389.LocalDataStorage>(
      () => _i389.LocalDataStorageImpl(gh<_i986.Box<dynamic>>()));
  gh.lazySingleton<_i606.HomeRemoteDatasource>(
      () => _i606.HomeRemoteDatasourceImpl(
            networkInfo: gh<_i224.NetworkInfo>(),
            localDataStorage: gh<_i389.LocalDataStorage>(),
            dio: gh<_i361.Dio>(),
          ));
  gh.lazySingleton<_i698.HomeRepository>(() => _i783.HomeRepositoryImpl(
        datasource: gh<_i606.HomeRemoteDatasource>(),
        localDataStorage: gh<_i389.LocalDataStorage>(),
      ));
  gh.lazySingleton<_i664.GetNewsUseCase>(
      () => _i664.GetNewsUseCase(repository: gh<_i698.HomeRepository>()));
  gh.lazySingleton<_i634.HomeBloc>(
      () => _i634.HomeBloc(getNewsUsecase: gh<_i664.GetNewsUseCase>()));
  return getIt;
}

class _$RegisterModule extends _i207.RegisterModule {}
