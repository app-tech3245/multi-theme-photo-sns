import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAaAtPnhkErZWVLr7eSup_3nMK7lACaYKo",
            authDomain: "multiple-theme-photo-sns.firebaseapp.com",
            projectId: "multiple-theme-photo-sns",
            storageBucket: "multiple-theme-photo-sns.appspot.com",
            messagingSenderId: "901203938907",
            appId: "1:901203938907:web:ff6ae34f98ea0b5dda797e",
            measurementId: "G-8PR8S0J1Z3"));
  } else {
    await Firebase.initializeApp();
  }
}
