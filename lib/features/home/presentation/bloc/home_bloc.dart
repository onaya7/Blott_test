import 'dart:async';

import 'package:blott/core/error/failure.dart';
import 'package:blott/core/usecase/usecase.dart';
import 'package:blott/features/home/data/models/news_model.dart';
import 'package:blott/features/home/domain/usecases/getnews_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@lazySingleton
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetNewsUseCase getNewsUsecase;

  HomeBloc({
    required this.getNewsUsecase,
  }) : super(const HomeState()) {
    on<GetNewsEvent>(getNewsEvent);
  }

  // This method is called when the GetNewsEvent is dispatched
  FutureOr<void> getNewsEvent(
      GetNewsEvent event, Emitter<HomeState> emit) async {
    emit(state.copyWith(status: HomeStatus.getNewsLoading));

    final result = await getNewsUsecase(NoParams());

    result.fold(
      (failure) => emit(state.copyWith(
        status: HomeStatus.getNewsError,
        errorMessage: ConvertFailureToString()(failure),
      )),
      (news) =>
          emit(state.copyWith(status: HomeStatus.getNewsSuccess, news: news)),
    );
    return null;
  }
}
