import 'package:flutter/material.dart';
import 'package:lp_sharon/core/app_colors.dart';
import 'package:lp_sharon/core/image_constants.dart';

class EndBlock extends StatelessWidget {
  const EndBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'Recupere seu investimento\nno primeiro trimestre de 2024!',
          style: TextStyle(
              color: AppColors.branco,
              fontSize: 40,
              fontWeight: FontWeight.w500,
              height: 1),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 50,
        ),
        const Text(
          'Acesse nossos canais de divulgação e saiba mais.',
          style: TextStyle(
              color: AppColors.branco,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              height: 1),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 50,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              ImageConstants.instaLogo,
              width: 63,
              height: 63,
            ),
            const SizedBox(
              width: 24,
            ),
            Image.asset(
              ImageConstants.whatsLogo,
              width: 63,
              height: 63,
            ),
            const SizedBox(
              width: 24,
            ),
            Image.asset(
              ImageConstants.symplaLogo,
              width: 63,
              height: 63,
            ),
          ],
        ),
      ],
    );
  }
}
