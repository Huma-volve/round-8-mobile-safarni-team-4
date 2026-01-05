import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/widgets/custom_text_form_field.dart';

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
              CustomTextFormField(
                hintText: 'Full Name',
                validator: (String? p1) {},
              ),
              TextField(decoration: InputDecoration(hintText: 'full name')),
            ],
          ),
        ),
      ),
    );
  }
}
