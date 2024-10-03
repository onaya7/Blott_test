import 'package:blott/core/error/error.dart';
import 'package:blott/core/network_info/network_info.dart';

class InternetSafeRunner {
  InternetSafeRunner(this.networkInfo);

  final NetworkInfo networkInfo;

  Future<T> call<T>({required Future<T> Function() safeCallback}) async {
    if (await networkInfo.isConnected) {
      return safeCallback();
    } else {
      throw const TraffikException.noInternet();
    }
  }
}
