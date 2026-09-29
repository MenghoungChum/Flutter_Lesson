import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodapp/controller/theme_controller.dart';
import 'package:riverpodapp/view/counter_screen.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final result = ref.watch(themeProvider);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterScreen(),
      theme: result ? ThemeData.dark() : ThemeData.light(),
    );
  }
}
