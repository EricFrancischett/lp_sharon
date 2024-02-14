import 'package:flutter/material.dart';
import 'package:lp_sharon/core/app_colors.dart';
import 'package:lp_sharon/core/image_constants.dart';
import 'package:lp_sharon/widgets/app_button.dart';

class AppointmentBlock extends StatelessWidget {
  const AppointmentBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '19 de maio\nChácara Sentinela\ndas 09h às 19h',
              style: TextStyle(
                color: AppColors.branco,
                fontWeight: FontWeight.w500,
                fontSize: 28,
              ),
              textAlign: TextAlign.end,
            ),
            SizedBox(
              height: 16,
            ),
            AppButton(
              text: 'Eu quero fazer parte!',
              fillColor: AppColors.rosa,
            )
          ],
        ),
        const SizedBox(
          width: 60,
        ),
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.topRight,
          children: [
            Image.asset(
              ImageConstants.location,
              width: 278,
              height: 246,
            ),
            Positioned(
              top: -72,
              right: -82,
              child: Image.asset(
                ImageConstants.bell,
                width: 164,
                height: 164,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
