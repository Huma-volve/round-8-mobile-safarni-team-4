import 'package:flutter/material.dart';

class ParisCruiseCard extends StatelessWidget {
  const ParisCruiseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 350,
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.grey, width: 2),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Paris Evening Cruise',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1E293B),
            ),
          ),
          const SizedBox(height: 8),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              const Text(
                '\$75',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                ),
              ),
              const SizedBox(width: 4),
              Text(
                '/person',
                style: TextStyle(fontSize: 20, color: Colors.grey[600]),
              ),
            ],
          ),
          const SizedBox(height: 24),
          _buildFeatureRow('Duration: 3 hours'),
          _buildFeatureRow('Highlights: Evening cruise, city lights'),
          _buildFeatureRow('Availability: Available'),
          _buildFeatureRow('Guide: Local guide'),
          _buildFeatureRow('Transportation: Boat'),
        ],
      ),
    );
  }

  Widget _buildFeatureRow(String text) {
    // Splitting label and value for bolding
    final parts = text.split(': ');
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.check, size: 20, color: Color(0xFF1E293B)),
          const SizedBox(width: 12),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: const TextStyle(fontSize: 16, color: Color(0xFF334155)),
                children: [
                  TextSpan(
                    text: '${parts[0]}: ',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: parts[1]),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
