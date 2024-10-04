import 'dart:async';

import 'package:blott/features/auth/data/models/user_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@lazySingleton
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState()) {
    on<SaveUserEvent>(saveUserEvent);
  }

  // This method is called when the SaveUserEvent is dispatched
  FutureOr<void> saveUserEvent(SaveUserEvent event, Emitter<AuthState> emit) {
    emit(state.copyWith(
      status: AuthStatus.saveUserSuccess,
      user: event.user,
    ));
  }
}
