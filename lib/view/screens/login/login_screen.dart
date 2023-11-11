import 'package:dicoding/shared/independent/text_field.dart';
import 'package:dicoding/shared/themes/themes.dart';
import 'package:dicoding/view/widgets/login/forgot_password_button.dart';
import 'package:dicoding/view/widgets/login/login_email_password_button.dart';
import 'package:dicoding/view/widgets/login/register_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(
            16.0,
            32.0,
            16.0,
            16.0,
          ),
          children: [
            Text(
              "Masuk",
              textAlign: TextAlign.center,
              style:
                  AppTextStyle.heading5.copyWith(fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 8.0),
            Text(
              "Masukkan Akun Kamu",
              textAlign: TextAlign.center,
              style: AppTextStyle.body2.copyWith(color: AppColors.neutral.ne05),
            ),
            const SizedBox(height: 32.0),
            KgTextField(
              labelText: 'Nama Lengkap',
              hintText: 'Masukkan nama lengkap',
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.next,
              onChanged: (value) {},
            ),
            const SizedBox(height: 16.0),
            KgTextField(
              labelText: 'Kata Sandi',
              hintText: 'Masukkan kata sandi',
              keyboardType: TextInputType.visiblePassword,
              textInputAction: TextInputAction.next,
              obscureText: true,
              suffixIcon: IconButton(
                onPressed: () {},
                focusNode: FocusNode(skipTraversal: true),
                color: AppColors.neutral.ne04,
                iconSize: 20.0,
                icon: const Icon(
                  Icons.visibility_off_rounded,
                ),
              ),
              onChanged: (value) {},
            ),
            const SizedBox(height: 16.0),
            const ForgotPasswordButton(),
            const SizedBox(height: 24.0),
            const LoginEmailPasswordButton(),
            const SizedBox(height: 16.0),
            const RegisterButton(),
          ],
        ),
      ),
    );
  }
}
