import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA-KYL-SLU40jxONmYLIo3AcoOO0POLSeY",
            authDomain: "fsgapp-1bc75.firebaseapp.com",
            projectId: "fsgapp-1bc75",
            storageBucket: "fsgapp-1bc75.appspot.com",
            messagingSenderId: "32920338432",
            appId: "1:32920338432:web:697a152418f6e4a0acd8e5",
            measurementId: "G-ZM8P94869R"));
  } else {
    await Firebase.initializeApp();
  }
}
