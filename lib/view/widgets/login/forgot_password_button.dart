import 'package:dicoding/shared/themes/themes.dart';
import 'package:flutter/material.dart';

class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Text(
        "Lupa Kata Sandi?",
        textAlign: TextAlign.end,
        style: AppTextStyle.body3
            .copyWith(fontWeight: FontWeight.w500)
            .copyWith(color: AppColors.primary.pr05),
      ),
    );
  }
}
