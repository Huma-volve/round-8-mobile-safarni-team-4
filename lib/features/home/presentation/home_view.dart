import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 24,
            children: [
              FilledButton(onPressed: () {}, child: Text('Add')),
              OutlinedButton(onPressed: () {}, child: Text('Add')),

              TextField(decoration: InputDecoration(hintText: 'full name')),
            ],
          ),
        ),
      ),
    );
  }
}
