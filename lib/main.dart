import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_with_firebase_crud/firebase_options.dart';
import 'package:flutter_getx_with_firebase_crud/src/binding/init_binding.dart';
import 'package:get/get.dart';

import 'src/view/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const Home(),
      initialBinding: InitBinding(),
    );
  }
}
