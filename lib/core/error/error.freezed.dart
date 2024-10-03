// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TraffikException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) server,
    required TResult Function() noInternet,
    required TResult Function(String? message) app,
    required TResult Function() unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? server,
    TResult? Function()? noInternet,
    TResult? Function(String? message)? app,
    TResult? Function()? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function()? noInternet,
    TResult Function(String? message)? app,
    TResult Function()? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$TraffikExceptionServer value) server,
    required TResult Function(_$TraffikExceptionNoInternet value) noInternet,
    required TResult Function(_$TraffikExceptionApp value) app,
    required TResult Function(_$TraffikExceptionUnknown value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$TraffikExceptionServer value)? server,
    TResult? Function(_$TraffikExceptionNoInternet value)? noInternet,
    TResult? Function(_$TraffikExceptionApp value)? app,
    TResult? Function(_$TraffikExceptionUnknown value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$TraffikExceptionServer value)? server,
    TResult Function(_$TraffikExceptionNoInternet value)? noInternet,
    TResult Function(_$TraffikExceptionApp value)? app,
    TResult Function(_$TraffikExceptionUnknown value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TraffikExceptionCopyWith<$Res> {
  factory $TraffikExceptionCopyWith(
          TraffikException value, $Res Function(TraffikException) then) =
      _$TraffikExceptionCopyWithImpl<$Res, TraffikException>;
}

/// @nodoc
class _$TraffikExceptionCopyWithImpl<$Res, $Val extends TraffikException>
    implements $TraffikExceptionCopyWith<$Res> {
  _$TraffikExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TraffikException
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$$TraffikExceptionServerImplCopyWith<$Res> {
  factory _$$$TraffikExceptionServerImplCopyWith(
          _$$TraffikExceptionServerImpl value,
          $Res Function(_$$TraffikExceptionServerImpl) then) =
      __$$$TraffikExceptionServerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$$TraffikExceptionServerImplCopyWithImpl<$Res>
    extends _$TraffikExceptionCopyWithImpl<$Res, _$$TraffikExceptionServerImpl>
    implements _$$$TraffikExceptionServerImplCopyWith<$Res> {
  __$$$TraffikExceptionServerImplCopyWithImpl(
      _$$TraffikExceptionServerImpl _value,
      $Res Function(_$$TraffikExceptionServerImpl) _then)
      : super(_value, _then);

  /// Create a copy of TraffikException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$$TraffikExceptionServerImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$$TraffikExceptionServerImpl implements _$TraffikExceptionServer {
  const _$$TraffikExceptionServerImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'TraffikException.server(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$TraffikExceptionServerImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of TraffikException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$$TraffikExceptionServerImplCopyWith<_$$TraffikExceptionServerImpl>
      get copyWith => __$$$TraffikExceptionServerImplCopyWithImpl<
          _$$TraffikExceptionServerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) server,
    required TResult Function() noInternet,
    required TResult Function(String? message) app,
    required TResult Function() unknown,
  }) {
    return server(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? server,
    TResult? Function()? noInternet,
    TResult? Function(String? message)? app,
    TResult? Function()? unknown,
  }) {
    return server?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function()? noInternet,
    TResult Function(String? message)? app,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$TraffikExceptionServer value) server,
    required TResult Function(_$TraffikExceptionNoInternet value) noInternet,
    required TResult Function(_$TraffikExceptionApp value) app,
    required TResult Function(_$TraffikExceptionUnknown value) unknown,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$TraffikExceptionServer value)? server,
    TResult? Function(_$TraffikExceptionNoInternet value)? noInternet,
    TResult? Function(_$TraffikExceptionApp value)? app,
    TResult? Function(_$TraffikExceptionUnknown value)? unknown,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$TraffikExceptionServer value)? server,
    TResult Function(_$TraffikExceptionNoInternet value)? noInternet,
    TResult Function(_$TraffikExceptionApp value)? app,
    TResult Function(_$TraffikExceptionUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class _$TraffikExceptionServer implements TraffikException {
  const factory _$TraffikExceptionServer(final String message) =
      _$$TraffikExceptionServerImpl;

  String get message;

  /// Create a copy of TraffikException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$$TraffikExceptionServerImplCopyWith<_$$TraffikExceptionServerImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$$TraffikExceptionNoInternetImplCopyWith<$Res> {
  factory _$$$TraffikExceptionNoInternetImplCopyWith(
          _$$TraffikExceptionNoInternetImpl value,
          $Res Function(_$$TraffikExceptionNoInternetImpl) then) =
      __$$$TraffikExceptionNoInternetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$$TraffikExceptionNoInternetImplCopyWithImpl<$Res>
    extends _$TraffikExceptionCopyWithImpl<$Res,
        _$$TraffikExceptionNoInternetImpl>
    implements _$$$TraffikExceptionNoInternetImplCopyWith<$Res> {
  __$$$TraffikExceptionNoInternetImplCopyWithImpl(
      _$$TraffikExceptionNoInternetImpl _value,
      $Res Function(_$$TraffikExceptionNoInternetImpl) _then)
      : super(_value, _then);

  /// Create a copy of TraffikException
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$$TraffikExceptionNoInternetImpl
    implements _$TraffikExceptionNoInternet {
  const _$$TraffikExceptionNoInternetImpl();

  @override
  String toString() {
    return 'TraffikException.noInternet()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$TraffikExceptionNoInternetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) server,
    required TResult Function() noInternet,
    required TResult Function(String? message) app,
    required TResult Function() unknown,
  }) {
    return noInternet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? server,
    TResult? Function()? noInternet,
    TResult? Function(String? message)? app,
    TResult? Function()? unknown,
  }) {
    return noInternet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function()? noInternet,
    TResult Function(String? message)? app,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$TraffikExceptionServer value) server,
    required TResult Function(_$TraffikExceptionNoInternet value) noInternet,
    required TResult Function(_$TraffikExceptionApp value) app,
    required TResult Function(_$TraffikExceptionUnknown value) unknown,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$TraffikExceptionServer value)? server,
    TResult? Function(_$TraffikExceptionNoInternet value)? noInternet,
    TResult? Function(_$TraffikExceptionApp value)? app,
    TResult? Function(_$TraffikExceptionUnknown value)? unknown,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$TraffikExceptionServer value)? server,
    TResult Function(_$TraffikExceptionNoInternet value)? noInternet,
    TResult Function(_$TraffikExceptionApp value)? app,
    TResult Function(_$TraffikExceptionUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class _$TraffikExceptionNoInternet implements TraffikException {
  const factory _$TraffikExceptionNoInternet() =
      _$$TraffikExceptionNoInternetImpl;
}

/// @nodoc
abstract class _$$$TraffikExceptionAppImplCopyWith<$Res> {
  factory _$$$TraffikExceptionAppImplCopyWith(_$$TraffikExceptionAppImpl value,
          $Res Function(_$$TraffikExceptionAppImpl) then) =
      __$$$TraffikExceptionAppImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$$TraffikExceptionAppImplCopyWithImpl<$Res>
    extends _$TraffikExceptionCopyWithImpl<$Res, _$$TraffikExceptionAppImpl>
    implements _$$$TraffikExceptionAppImplCopyWith<$Res> {
  __$$$TraffikExceptionAppImplCopyWithImpl(_$$TraffikExceptionAppImpl _value,
      $Res Function(_$$TraffikExceptionAppImpl) _then)
      : super(_value, _then);

  /// Create a copy of TraffikException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$$TraffikExceptionAppImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$$TraffikExceptionAppImpl implements _$TraffikExceptionApp {
  const _$$TraffikExceptionAppImpl(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'TraffikException.app(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$TraffikExceptionAppImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of TraffikException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$$TraffikExceptionAppImplCopyWith<_$$TraffikExceptionAppImpl>
      get copyWith =>
          __$$$TraffikExceptionAppImplCopyWithImpl<_$$TraffikExceptionAppImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) server,
    required TResult Function() noInternet,
    required TResult Function(String? message) app,
    required TResult Function() unknown,
  }) {
    return app(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? server,
    TResult? Function()? noInternet,
    TResult? Function(String? message)? app,
    TResult? Function()? unknown,
  }) {
    return app?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function()? noInternet,
    TResult Function(String? message)? app,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (app != null) {
      return app(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$TraffikExceptionServer value) server,
    required TResult Function(_$TraffikExceptionNoInternet value) noInternet,
    required TResult Function(_$TraffikExceptionApp value) app,
    required TResult Function(_$TraffikExceptionUnknown value) unknown,
  }) {
    return app(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$TraffikExceptionServer value)? server,
    TResult? Function(_$TraffikExceptionNoInternet value)? noInternet,
    TResult? Function(_$TraffikExceptionApp value)? app,
    TResult? Function(_$TraffikExceptionUnknown value)? unknown,
  }) {
    return app?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$TraffikExceptionServer value)? server,
    TResult Function(_$TraffikExceptionNoInternet value)? noInternet,
    TResult Function(_$TraffikExceptionApp value)? app,
    TResult Function(_$TraffikExceptionUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (app != null) {
      return app(this);
    }
    return orElse();
  }
}

abstract class _$TraffikExceptionApp implements TraffikException {
  const factory _$TraffikExceptionApp(final String? message) =
      _$$TraffikExceptionAppImpl;

  String? get message;

  /// Create a copy of TraffikException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$$TraffikExceptionAppImplCopyWith<_$$TraffikExceptionAppImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$$TraffikExceptionUnknownImplCopyWith<$Res> {
  factory _$$$TraffikExceptionUnknownImplCopyWith(
          _$$TraffikExceptionUnknownImpl value,
          $Res Function(_$$TraffikExceptionUnknownImpl) then) =
      __$$$TraffikExceptionUnknownImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$$TraffikExceptionUnknownImplCopyWithImpl<$Res>
    extends _$TraffikExceptionCopyWithImpl<$Res, _$$TraffikExceptionUnknownImpl>
    implements _$$$TraffikExceptionUnknownImplCopyWith<$Res> {
  __$$$TraffikExceptionUnknownImplCopyWithImpl(
      _$$TraffikExceptionUnknownImpl _value,
      $Res Function(_$$TraffikExceptionUnknownImpl) _then)
      : super(_value, _then);

  /// Create a copy of TraffikException
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$$TraffikExceptionUnknownImpl implements _$TraffikExceptionUnknown {
  const _$$TraffikExceptionUnknownImpl();

  @override
  String toString() {
    return 'TraffikException.unknown()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$TraffikExceptionUnknownImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) server,
    required TResult Function() noInternet,
    required TResult Function(String? message) app,
    required TResult Function() unknown,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? server,
    TResult? Function()? noInternet,
    TResult? Function(String? message)? app,
    TResult? Function()? unknown,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function()? noInternet,
    TResult Function(String? message)? app,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$TraffikExceptionServer value) server,
    required TResult Function(_$TraffikExceptionNoInternet value) noInternet,
    required TResult Function(_$TraffikExceptionApp value) app,
    required TResult Function(_$TraffikExceptionUnknown value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$TraffikExceptionServer value)? server,
    TResult? Function(_$TraffikExceptionNoInternet value)? noInternet,
    TResult? Function(_$TraffikExceptionApp value)? app,
    TResult? Function(_$TraffikExceptionUnknown value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$TraffikExceptionServer value)? server,
    TResult Function(_$TraffikExceptionNoInternet value)? noInternet,
    TResult Function(_$TraffikExceptionApp value)? app,
    TResult Function(_$TraffikExceptionUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _$TraffikExceptionUnknown implements TraffikException {
  const factory _$TraffikExceptionUnknown() = _$$TraffikExceptionUnknownImpl;
}
