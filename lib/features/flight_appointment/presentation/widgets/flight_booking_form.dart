import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/utils/extesions/date_ex.dart';
import '../../../../core/colors/app_colors.dart';
import '../../../../core/routing/app_routes.dart';

class FlightBookingForm extends StatelessWidget {
  const FlightBookingForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildLabel(context, 'Location'),
            const SizedBox(height: 8),
            _buildTextField(hintText: 'Montreal,Canada'),
            const SizedBox(height: 16),
            _buildLabel(context, 'Destination'),
            const SizedBox(height: 8),
            _buildTextField(hintText: 'Tokyo,Japan'),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildLabel(context, 'Departure'),
                      const SizedBox(height: 8),
                      _buildTextField(
                        hintText: DateTime.now().toDayWithSuffix(),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildLabel(context, 'Return'),
                      const SizedBox(height: 8),
                      _buildTextField(
                        hintText:
                            DateTime.now()
                                .add(Duration(days: 1))
                                .toDayWithSuffix(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            _buildLabel(context, 'Passenger'),
            const SizedBox(height: 8),
            _buildDropdownField(text: '1 Passenger'),
            const SizedBox(height: 32),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.paymentMethod);
                },
                child: Text(
                  'Search Flights',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: AppColors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }

  Widget _buildLabel(BuildContext context, String label) {
    return Text(
      label,
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
        fontWeight: FontWeight.w600,
        color: AppColors.black,
      ),
    );
  }

  Widget _buildTextField({required String hintText}) {
    return TextField(decoration: InputDecoration(hintText: hintText));
  }

  Widget _buildDropdownField({required String text}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.gray.withOpacity(0.5)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
              color: AppColors.black.withOpacity(0.7),
              fontSize: 14,
            ),
          ),
          Icon(Icons.keyboard_arrow_down, color: AppColors.gray),
        ],
      ),
    );
  }
}
