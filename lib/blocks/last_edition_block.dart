import 'package:flutter/material.dart';
import 'package:lp_sharon/core/app_colors.dart';
import 'package:lp_sharon/core/image_constants.dart';
import 'package:lp_sharon/widgets/blur_title.dart';

class LastEditionBlock extends StatelessWidget {
  const LastEditionBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const BlurTitle(
          title: 'O QUE ROLOU NA PRIMEIRA EDIÇÃO!',
          fillColor: AppColors.amarelo,
        ),
        const SizedBox(
          height: 40,
        ),
        SizedBox(
          width: 823,
          height: 493,
          child: Image.asset(
            ImageConstants.lastEditionPic,
          ),
        ),
      ],
    );
  }
}
