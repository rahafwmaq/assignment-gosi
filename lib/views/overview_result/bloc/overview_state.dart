part of 'overview_bloc.dart';

@immutable
sealed class OverviewState {}

final class OverviewInitial extends OverviewState {}

class ErrorGetDataState extends OverviewState {
  final String errorText;

  ErrorGetDataState({required this.errorText});
}

class SuccessGetDataState extends OverviewState {

}
