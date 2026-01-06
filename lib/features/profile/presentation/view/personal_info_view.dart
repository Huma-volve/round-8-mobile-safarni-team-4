import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/presentation/view/widgets/personal_info_body.dart';

class PersonalInfoView extends StatelessWidget {
  const PersonalInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Personal Information'),
        centerTitle: true,
      ),
      body: const PersonalInfoBody(),
    );
  }
}
