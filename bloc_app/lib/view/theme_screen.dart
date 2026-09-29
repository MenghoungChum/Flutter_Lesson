import 'package:bloc_app/controllers/theme/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Theme Screen")),
      body: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return Center(
            child: ElevatedButton(
              onPressed: () {
                context.read<ThemeBloc>().add(ChangeTheme());
              },
              child: Text(state.isDark ?  "Light Mode" : "Dark Mode"),
            ),
          );
        },
      ),
    );
    ;
  }
}
