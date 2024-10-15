import 'package:assignment_gosi/services/get_it_config.dart';
import 'package:assignment_gosi/views/loading_view.dart';
import 'package:assignment_gosi/views/overview_result/bloc/overview_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupGetIt();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBPSb45LSUYePTO8RNmOznsRs4vpOoX3AU",
            authDomain: "gosi-63899.firebaseapp.com",
            projectId: "gosi-63899",
            storageBucket: "gosi-63899.appspot.com",
            messagingSenderId: "748305348351",
            appId: "1:748305348351:web:5c594105280d87b8b73eca"));
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OverviewBloc()..add(GetDataEvent()),
      child: MaterialApp(
        theme: ThemeData(fontFamily: 'EuclidSquare'),
        debugShowCheckedModeBanner: false,
        home: const LoadingView(),
      ),
    );
  }
}
