import 'package:flutter/material.dart';
import 'package:lp_sharon/core/app_colors.dart';
import 'package:lp_sharon/core/resolutions.dart';

class AppButton extends StatelessWidget {
  final String text;
  final Color fillColor;
  const AppButton({
    super.key,
    required this.text,
    required this.fillColor,
  });

  @override
  Widget build(BuildContext context) {
    CurrentResolution currentResolution =
        Resolutions.getResolution(context: context);
    bool isCellPhone = currentResolution == CurrentResolution.isCellPhone;
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {},
        child: isCellPhone
            ? _buildPhoneButton()
            : Container(
                height: 36,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                decoration: BoxDecoration(
                  color: fillColor,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      blurStyle: BlurStyle.solid,
                      color: fillColor,
                      blurRadius: 9.0,
                      spreadRadius: 9.0,
                    ),
                  ],
                ),
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Text(
                    text,
                    style: const TextStyle(
                      color: AppColors.preto,
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
      ),
    );
  }

  Widget _buildPhoneButton() {
    return Container(
      height: 28,
      padding: const EdgeInsets.symmetric(
        horizontal: 4,
      ),
      decoration: BoxDecoration(
        color: fillColor,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            blurStyle: BlurStyle.solid,
            color: fillColor,
            blurRadius: 5.0,
            spreadRadius: 5.0,
          ),
        ],
      ),
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Text(
          text,
          style: const TextStyle(
            color: AppColors.preto,
            fontSize: 14,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}
