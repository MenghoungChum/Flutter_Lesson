import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodapp/controller/theme_controller.dart';

class ThemeScreen extends ConsumerWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final result = ref.watch(themeProvider);
    final controller = ref.read(themeProvider.notifier);
    return Scaffold(
      appBar: AppBar(title: Text("Theme Screen")),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            result ? 
            Icon(Icons.sunny,size: 200,color: Colors.amber,) :
            Icon(Icons.nightlight_outlined,size: 200,color: Colors.amber,),
            Switch(
              value: result,
              onChanged: (value) {
                controller.state = value;
                print(controller.state);
              },
            ),
          ],
        ),
      ),
    );
  }
}
