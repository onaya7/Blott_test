part of 'home_bloc.dart';

enum HomeStatus {
  initial,
  getNewsLoading,
  getNewsSuccess,
  getNewsError,
}

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(HomeStatus.initial) HomeStatus status,
    @Default('') String errorMessage,
    List<NewsModel>? news,
  }) = _HomeState;
}
