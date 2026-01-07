import 'package:flutter/material.dart';

class CustomLocation extends StatelessWidget {
  const CustomLocation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
          children: [
            Icon(Icons.location_on_outlined, color: Colors.grey[600], size: 24.0),
            const SizedBox(width: 4.0),
            Text("Downtown, NYC", style: TextStyle(color: Colors.grey[600])),
          ],
        );
  }
}
