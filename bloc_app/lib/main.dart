import 'package:bloc_app/controllers/counter/counter_bloc.dart';
import 'package:bloc_app/controllers/theme/theme_bloc.dart';
import 'package:bloc_app/view/counter_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CounterBloc(),),
        BlocProvider(create: (context) => ThemeBloc(),)
      ],
    child: BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: CounterScreen(),
          theme: state.isDark ? ThemeData.dark() : ThemeData.light(),
        );
      },
    ),
    );
  }
}
