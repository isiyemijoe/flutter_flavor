import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreServices {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  static FirestoreServices get instance => FirestoreServices._();

  factory FirestoreServices() {
    return instance;
  }

  FirestoreServices._();
}
