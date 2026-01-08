import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import '../widgets/boarding_pass_card.dart';

class BoardingPassView extends StatelessWidget {
  const BoardingPassView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: const Color(0xFF1E293B),
            size: context.sp(20),
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('Boarding Pass'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(child: BoardingPassCard()),
            Container(
              margin: EdgeInsets.all(context.sp(24)),
                width: double.infinity,
                child: FilledButton(onPressed: () {}, child: const Text('Check out'))),
          ],
        ),
      ),
    );
  }
}
