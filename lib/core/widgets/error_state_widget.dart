import 'package:flutter/material.dart';
import '../api/api_error_handler.dart';
import '../di/service_locator.dart';

class ErrorStateWidget extends StatelessWidget {
  final Object error;

  const ErrorStateWidget({super.key, required this.error});

  @override
  Widget build(BuildContext context) {
    final ApiErrorHandler apiErrorHandler = getIt.get<ApiErrorHandler>();
    return Center(
      child: Text(
        apiErrorHandler.handle(error),
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
}