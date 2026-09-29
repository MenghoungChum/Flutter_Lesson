import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodapp/controller/counter_controller_class.dart';
import 'package:riverpodapp/view/theme_screen.dart';

class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final result = ref.watch(counterProvider);
    // final controller = ref.read(counterProvider.notifier);

    final result = ref.watch(counterProviderClass);
    final controller = ref.read(counterProviderClass.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter value via Riverpod"),
        actions: [
          IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ThemeScreen()),
            ),
            icon: Icon(Icons.arrow_forward),
          ),
        ],
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Counter value",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 20),

          // Display counter
          Text(
            '$result',
            style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // -
              ElevatedButton.icon(
                onPressed: () {
                  controller.decrement();
                },
                icon: const Icon(Icons.remove),
                label: const Text("Remove"),
              ),

              const SizedBox(width: 20),

              // +
              ElevatedButton.icon(
                onPressed: () {
                  controller.increment();
                },
                icon: const Icon(Icons.add),
                label: const Text("Add"),
              ),
            ],
          ),

          const SizedBox(height: 20),

          // Reset
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            onPressed: () {
              controller.reset();
            },
            child: const Text("Reset", style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
