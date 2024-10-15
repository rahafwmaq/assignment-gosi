import 'package:assignment_gosi/models/fitness_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseService {
  FirebaseFirestore firebase = FirebaseFirestore.instance;

  Future<FitnessModel?> getData() async {
    FitnessModel fitnessModel = FitnessModel();
    try {
      final response = await firebase.collection('fitness_overview').get();
      print('======================');
      print(response);

      for (var data in response.docs) {
        fitnessModel = FitnessModel.fromJson(data.data());
        print(fitnessModel.title);
      }

      return fitnessModel;
    } catch (error) {
      print('Error in getData Method : ${error.toString()}');
    }
    return null;
  }
}
