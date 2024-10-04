part of 'auth_bloc.dart';

enum AuthStatus {
  initial,
  saveUserSuccess,
}

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(AuthStatus.initial) AuthStatus status,
    @Default('') String errorMessage,
    UserModel? user,
  }) = _AuthState;
}



