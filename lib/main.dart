import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_loto_check/repository/loto_reporitory.dart';
import 'package:flutter_loto_check/screen/home_screen.dart';

import 'bloc/register/register_blocs_exports.dart';
import 'bloc/search/search_loto_blocs_exports.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<RegisterLotoBloc>(
          create: (_) => RegisterLotoBloc(
            repository: LotteryRepository(
              dio: Dio(),
            ),
          ),
        ),
        BlocProvider<SearchLotoBloc>(
          create: (_) => SearchLotoBloc(
            repository: LotteryRepository(
              dio: Dio(),
            ),
          ),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Loto Check',
        home: HomeScreen(),
      ),
    );
  }
}
