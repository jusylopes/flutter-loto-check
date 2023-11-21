import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_loto_check/screen/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: const [],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Loto Check',
        home: HomeScreen(),
      ),
    );
  }
}
