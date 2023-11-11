import 'package:dicoding/shared/themes/themes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Belum Punya Akun? ',
            style: TextStyle(color: AppColors.neutral.ne04),
          ),
          TextSpan(
            text: 'Daftar',
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                FocusScope.of(context).unfocus();
              },
            style: TextStyle(color: AppColors.primary.pr05),
          ),
        ],
        style: AppTextStyle.body3,
      ),
      textAlign: TextAlign.center,
    );
  }
}
