import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods {
  Future addQuizCategory(
      Map<String, dynamic> userQuizCategory, String Category) async {
    return await FirebaseFirestore.instance
        .collection(Category)
        .add(userQuizCategory);
  }
  Future <Stream<QuerySnapshot>> getCategoryQuize(String Category)async{
    return await FirebaseFirestore.instance.collection(Category).snapshots();
    
  }
}
