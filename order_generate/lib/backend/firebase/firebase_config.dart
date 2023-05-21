import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCB68P7Y7RuECRe3MAEla93IXe5wVbziIw",
            authDomain: "order-generate.firebaseapp.com",
            projectId: "order-generate",
            storageBucket: "order-generate.appspot.com",
            messagingSenderId: "936729018256",
            appId: "1:936729018256:web:5ce4c2e08de2573a69bd15"));
  } else {
    await Firebase.initializeApp();
  }
}
