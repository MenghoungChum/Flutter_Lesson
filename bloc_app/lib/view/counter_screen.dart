import 'package:bloc_app/controllers/counter/counter_bloc.dart';
import 'package:bloc_app/view/theme_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter value via Bloc"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ThemeScreen()),
              );
            },
            icon: Icon(Icons.arrow_forward),
          ),
        ],
      ),

      body: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Counter value",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 20),

              // Display counter
              Text(
                '${state.counter}',
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // -
                  ElevatedButton.icon(
                    onPressed: () {
                      context.read<CounterBloc>().add(Decrement());
                    },
                    icon: const Icon(Icons.remove),
                    label: const Text("Remove"),
                  ),

                  const SizedBox(width: 20),

                  // +
                  ElevatedButton.icon(
                    onPressed: () {
                      context.read<CounterBloc>().add(Increment());
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
                  context.read<CounterBloc>().add(Reset());
                },
                child: const Text(
                  "Reset",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          );
        },
      ),
    );
    ;
  }
}
