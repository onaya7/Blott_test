import 'package:freezed_annotation/freezed_annotation.dart';

part 'error.freezed.dart';

@freezed
class TraffikException with _$TraffikException implements Exception {
  /// thrown when there is a problem with the server
  const factory TraffikException.server(String message) =
      _$TraffikExceptionServer;

  /// thrown when there is no internet
  const factory TraffikException.noInternet() = _$TraffikExceptionNoInternet;

  /// thrown when there is a problem with the app
  const factory TraffikException.app(String? message) = _$TraffikExceptionApp;

  /// thrown when the error is unknown
  const factory TraffikException.unknown() = _$TraffikExceptionUnknown;
}
