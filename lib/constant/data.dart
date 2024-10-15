import 'package:assignment_gosi/views/overview_result/widgets/overview_content_tab.dart';
import 'package:assignment_gosi/views/overview_result/widgets/symptoms_content_tap.dart';
import 'package:assignment_gosi/views/overview_result/widgets/training_content_tap.dart';

List homeViewData = [
  {"title": "Overview", "widget": const OverviewContentTab()},
  {"title": "Training", "widget": const TrainingContentTap()},
  {"title": "Symptoms", "widget": const SymptomsContentTap()}
];
