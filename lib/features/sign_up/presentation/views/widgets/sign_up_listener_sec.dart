import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/theme_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/routing/app_routes.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_text_stytles.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/domain/entities/verify_code_entity.dart/verify_code_request_entity.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/presentation/manager/sign_up_cubit/sign_up_cubit.dart';

class SignUpListenerSec extends StatelessWidget {
  const SignUpListenerSec({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState>(
      listenWhen:
          (previous, current) =>
              current is SignUpSuccess ||
              current is SignUpLoading ||
              current is SignUpFailure,
      listener: (context, state) {
        if (state is SignUpLoading) {
          showDialog(
            context: context,
            builder: (context) {
              return const Center(child: CircularProgressIndicator());
            },
          );
        }
        if (state is SignUpFailure) {
          Navigator.pop(context);
          setupErrorState(context, state.errorMessage);
        }
        if (state is SignUpSuccess) {
          Navigator.pop(context);
          context.pushNamed(
            AppRoutes.verifyCodeView,
            arguments: VerifyCodeRequestEntity(
              userId: state.signUpResponseEntity.userId,
              otp: '',
              email: context.read<SignUpCubit>().emailController.text,
            ),
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
