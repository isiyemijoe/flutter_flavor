import 'dart:math';

import 'package:flutternotify/resources/app_config.dart';
import 'package:flutternotify/services/firestore_serviec.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserRepository {
  static UserRepository get instance => UserRepository._();
  CollectionReference _userReference =
      FirestoreServices().firestore.collection("users");

  factory UserRepository() {
    return instance;
  }

  UserRepository._();

  addUser(String name, String dob, String flavor) {
    _userReference
        .add({"name": name, "dob": dob, "flavor": flavor})
        .then((value) => print("User Added"))
        .onError((error, stackTrace) => print("Error Occured"))
        .catchError((error) {
          print("This $error Occued");
        });
  }
}
