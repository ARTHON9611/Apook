import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyARBbdHFfjHw7u7OrA9zEL7TVl5EcLzdyU",
            authDomain: "apook-az465b.firebaseapp.com",
            projectId: "apook-az465b",
            storageBucket: "apook-az465b.appspot.com",
            messagingSenderId: "153023644799",
            appId: "1:153023644799:web:b4589ee7eae5667f0d2b4a"));
  } else {
    await Firebase.initializeApp();
  }
}
