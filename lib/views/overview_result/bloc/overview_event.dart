part of 'overview_bloc.dart';

@immutable
sealed class OverviewEvent {}

class GetDataEvent extends OverviewEvent{}