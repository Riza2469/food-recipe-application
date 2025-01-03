import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAjlnGrYHfgM4l1Maw_KT86PqEMLIr1RsI",
            authDomain: "food-recipe-3l9yeb.firebaseapp.com",
            projectId: "food-recipe-3l9yeb",
            storageBucket: "food-recipe-3l9yeb.appspot.com",
            messagingSenderId: "25153781248",
            appId: "1:25153781248:web:04bdf39e780e9a8cb3e2e5"));
  } else {
    await Firebase.initializeApp();
  }
}
