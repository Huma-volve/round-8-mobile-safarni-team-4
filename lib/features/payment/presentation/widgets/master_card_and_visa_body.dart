import 'package:flutter/material.dart';
import '../../../../core/colors/app_colors.dart';

class MasterCardAndVisaBody extends StatelessWidget {
  const MasterCardAndVisaBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Full Name',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w600,
              color: AppColors.black,
            ),
          ),
          const SizedBox(height: 8),
          const TextField(
            decoration: InputDecoration(hintText: 'Your full name'),
          ),
          const SizedBox(height: 16),
          Text(
            'Your Email',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w600,
              color: AppColors.black,
            ),
          ),
          const SizedBox(height: 8),
          const TextField(
            decoration: InputDecoration(hintText: 'Type your email'),
          ),
          const SizedBox(height: 16),
          Row(
            spacing: 8,
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Text(
                      'Valid Date',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: AppColors.black,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const TextField(
                      decoration: InputDecoration(
                        hintText: '12-24',

                        suffixIcon: Icon(Icons.calendar_today, size: 14),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Text(
                      'cvv',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: AppColors.black,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const TextField(
                      decoration: InputDecoration(
                        hintText: '562',
                        suffixIcon: Icon(Icons.lock, size: 14),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
