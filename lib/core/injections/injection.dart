import 'package:blott/core/injections/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

GetIt sl = GetIt.instance;

@InjectableInit(asExtension: false)
void configureDependencies() => init(sl);
