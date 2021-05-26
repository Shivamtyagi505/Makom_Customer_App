import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class CollectionFetcher {
  final String uid = FirebaseAuth.instance.currentUser.uid;

  bool isLoggedIn() {
    if (FirebaseAuth.instance.currentUser != null) {
      return true;
    } else {
      return false;
    }
  }

  Stream getItems() {
    Stream result = FirebaseFirestore.instance
        .collection("products")
        .doc(uid)
        .collection("items")
        .snapshots();

    return result;
  }

  Future setItems(Map<String, dynamic> data) {
    var result;
    try {
      result = FirebaseFirestore.instance
          .collection("products")
          .doc(uid)
          .collection("items")
          .doc()
          .set(data);
    } catch (e) {
      print(e);
    }

    return result;
  }
}
