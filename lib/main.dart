import 'package:cloudyml_review/student_review/review_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyB4kHRJMnHxhtBkcU4crmGNFLHwkX2RGS8",
          appId: "1:67056708090:web:c551c2c922d714206ddc43",
          messagingSenderId: "67056708090",
          projectId: "cloudyml-app",
          storageBucket: "cloudyml-app.appspot.com",
          databaseURL: "https://cloudyml-app-default-rtdb.firebaseio.com",
          authDomain: "cloudyml-app.firebaseapp.com"));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ToastContext().init(context);
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  const StudentReviewScreen(),
    );
  }
}
