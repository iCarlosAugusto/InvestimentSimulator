import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:help_teacher/firebase_options.dart';
import 'package:help_teacher/layers/domain/providers/setup.dart';
import 'package:help_teacher/layers/domain/routes/router.dart';
import 'package:help_teacher/utils/global_contenxt.dart';

void main() async {
  setupProviders();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}
