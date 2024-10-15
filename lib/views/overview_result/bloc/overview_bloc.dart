import 'package:assignment_gosi/models/fitness_data.dart';
import 'package:assignment_gosi/services/get_data.dart';
import 'package:assignment_gosi/services/overview_service.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:meta/meta.dart';

part 'overview_event.dart';
part 'overview_state.dart';

class OverviewBloc extends Bloc<OverviewEvent, OverviewState> {
  final locatorOverview = GetIt.I.get<OverviewService>();
  int selectedIndex = 0 ;
    PageController pageController = PageController();

  OverviewBloc() : super(OverviewInitial()) {
    on<GetDataEvent>(onGetDataEvent);
  }

  void onGetDataEvent(GetDataEvent event, Emitter<OverviewState> emit) async {
    try {
      FitnessModel? fitnessData = await FirebaseService().getData();
      if (fitnessData == null) {
        emit(
            ErrorGetDataState(errorText: 'There is an Error please try again'));
      } else {
        locatorOverview.fitnessModel = fitnessData;
        emit(SuccessGetDataState());
      }
    } catch (error) {
      print('Error in GetDataEvent Bloc : ${error.toString()}');
    }
  }
}
