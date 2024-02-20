import 'package:flutter/material.dart';
import 'package:lp_sharon/core/app_colors.dart';
import 'package:lp_sharon/core/image_constants.dart';
import 'package:lp_sharon/core/resolutions.dart';
import 'package:lp_sharon/core/url_contants.dart';
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
              UrlConstants.mapLink,
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
              UrlConstants.mapLink,
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
