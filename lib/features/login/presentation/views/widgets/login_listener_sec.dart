import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/routing/app_routes.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_text_stytles.dart';
import 'package:round_8_mobile_safarni_team4/features/login/presentation/manager/login_cubit/login_cubit.dart';

class LoginListenerSec extends StatelessWidget {
  const LoginListenerSec({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen:
          (previous, current) =>
              current is LoginSuccess ||
              current is LoginLoading ||
              current is LoginFailure,
      listener: (context, state) {
        if (state is LoginLoading) {
          showDialog(
            context: context,
            builder: (context) {
              return const Center(child: CircularProgressIndicator());
            },
          );
        }
        if (state is LoginFailure) {
          Navigator.pop(context);
          setupErrorState(context, state.errorMessage);
        }
        if (state is LoginSuccess) {
          Navigator.pop(context);
          Navigator.pushNamedAndRemoveUntil(
            context,
            AppRoutes.home,
            (route) => false,
          );
        }
      },
      child: const SizedBox.shrink(),
    );
  }
}

void setupErrorState(BuildContext context, String error) {
  showDialog(
    context: context,
    builder:
        (context) => AlertDialog(
          backgroundColor: Colors.white,
          icon: Icon(Icons.error, color: Colors.red, size: context.w(40)),
          content: Text(
            error,
            style: AppTextStyles.font16mainColorLightSemiBold(context),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Got it',
                textAlign: TextAlign.center,
                style: AppTextStyles.font14MainColorLightw600(context),
              ),
            ),
          ],
        ),
  );
}
