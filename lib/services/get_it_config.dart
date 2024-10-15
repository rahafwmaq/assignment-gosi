import 'package:assignment_gosi/services/overview_service.dart';
import 'package:get_it/get_it.dart';

Future<void> setupGetIt() async {
  final getIt = GetIt.instance;
  getIt.registerSingleton<OverviewService>(OverviewService());
}
