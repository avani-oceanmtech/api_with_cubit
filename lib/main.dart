import 'dart:async';

import 'package:api_with_cubit/features/home/presentation/view/abc.dart';
import 'package:flutter/material.dart';
import 'di/get_it.dart' as get_it;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  mainFunction();

  runApp(const MyApp());
}

Future<void> mainFunction() async {
  unawaited(get_it.init());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Api Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const AbcScreen(),
    );
  }
}
