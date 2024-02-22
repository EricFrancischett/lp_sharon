import 'package:flutter/material.dart';
import 'package:lp_sharon/core/app_colors.dart';
import 'package:lp_sharon/core/image_constants.dart';
import 'package:lp_sharon/core/resolutions.dart';
import 'package:lp_sharon/widgets/app_button.dart';
import 'package:url_launcher/url_launcher.dart';

class AppointmentBlock extends StatelessWidget {
  final CurrentResolution currentResolution;
  const AppointmentBlock({
    super.key,
    required this.currentResolution,
  });

  @override
  Widget build(BuildContext context) {
    bool isCellPhone = currentResolution == CurrentResolution.isCellPhone;
    return isCellPhone
        ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildLabelPhone(),
              const SizedBox(
                height: 100,
              ),
              _buildMapPhone(),
            ],
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildLabel(),
              const SizedBox(
                width: 60,
              ),
              _buildMap(),
            ],
          );
  }

  Widget _buildLabel() {
    return const Column(
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
    );
  }

  Widget _buildLabelPhone() {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          '19 de maio\nChácara Sentinela\ndas 09h às 19h',
          style: TextStyle(
            color: AppColors.branco,
            fontWeight: FontWeight.w500,
            fontSize: 28,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 16,
        ),
        SizedBox(
          width: 200,
          child: AppButton(
            text: 'Eu quero fazer parte!',
            fillColor: AppColors.rosa,
          ),
        )
      ],
    );
  }

  Widget _buildMap() {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () async {
          await launchUrl(
            Uri.parse(
              'https://www.google.com/maps/place/Ch%C3%A1cara+Sentinela+do+Imbuial/@-25.3019757,-49.1696814,14.17z/data=!4m6!3m5!1s0x94dce98de5f2b853:0x59e2d1ab54f204d0!8m2!3d-25.2971436!4d-49.1629205!16s%2Fg%2F11fvqxxbnb?entry=ttu',
            ),
          );
        },
        child: Stack(
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
      ),
    );
  }

  Widget _buildMapPhone() {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () async {
          await launchUrl(
            Uri.parse(
              'https://www.google.com/maps/place/Ch%C3%A1cara+Sentinela+do+Imbuial/@-25.3019757,-49.1696814,14.17z/data=!4m6!3m5!1s0x94dce98de5f2b853:0x59e2d1ab54f204d0!8m2!3d-25.2971436!4d-49.1629205!16s%2Fg%2F11fvqxxbnb?entry=ttu',
            ),
          );
        },
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.topRight,
          children: [
            Image.asset(
              ImageConstants.location,
              width: 278,
              height: 246,
            ),
            Positioned(
              top: -36,
              right: -41,
              child: Image.asset(
                ImageConstants.bell,
                width: 80,
                height: 80,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
