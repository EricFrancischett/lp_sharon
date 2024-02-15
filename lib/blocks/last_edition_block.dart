import 'package:flutter/material.dart';
import 'package:lp_sharon/core/app_colors.dart';
import 'package:lp_sharon/core/image_constants.dart';
import 'package:lp_sharon/core/resolutions.dart';
import 'package:lp_sharon/widgets/blur_title.dart';

class LastEditionBlock extends StatelessWidget {
  final CurrentResolution currentResolution;
  const LastEditionBlock({
    super.key,
    required this.currentResolution,
  });

  @override
  Widget build(BuildContext context) {
    bool isCellPhone = currentResolution == CurrentResolution.isCellPhone;
    bool isTablet = currentResolution == CurrentResolution.isTablet;
    return Padding(
      padding: (isCellPhone || isTablet)
          ? const EdgeInsets.symmetric(horizontal: 32)
          : const EdgeInsets.all(0),
      child: Column(
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
          if (isCellPhone)
            SizedBox(
              width: 320,
              height: 676,
              child: Image.asset(
                ImageConstants.lastEditionPicVertical,
              ),
            )
          else
            SizedBox(
              width: 823,
              height: 493,
              child: Image.asset(
                ImageConstants.lastEditionPicHorizontal,
              ),
            ),
        ],
      ),
    );
  }
}
