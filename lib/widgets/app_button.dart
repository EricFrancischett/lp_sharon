import 'package:flutter/material.dart';
import 'package:lp_sharon/core/app_colors.dart';
import 'package:lp_sharon/core/resolutions.dart';
import 'package:lp_sharon/core/url_contants.dart';
import 'package:url_launcher/url_launcher.dart';

class AppButton extends StatefulWidget {
  final String text;
  final Color fillColor;
  const AppButton({
    super.key,
    required this.text,
    required this.fillColor,
  });

  @override
  State<AppButton> createState() => _AppButtonState();
}

bool isHovered = false;

class _AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    CurrentResolution currentResolution =
        Resolutions.getResolution(context: context);
    bool isCellPhone = currentResolution == CurrentResolution.isCellPhone;
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (event) {
        setState(() {
          isHovered = false;
        });
      },
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
          onTap: () async {
            await launchUrl(
              Uri.parse(
                UrlConstants.symplaLink,
              ),
            );
          },
          child: Padding(
            padding: isCellPhone
                ? const EdgeInsets.all(5)
                : const EdgeInsets.all(9),
            child: isCellPhone
                ? _buildPhoneButton()
                : AnimatedContainer(
                    duration: const Duration(milliseconds: 100),
                    height: 36,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    decoration: BoxDecoration(
                      color: isHovered ? AppColors.branco : widget.fillColor,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          blurStyle: BlurStyle.solid,
                          color:
                              isHovered ? AppColors.branco : widget.fillColor,
                          blurRadius: 9.0,
                          spreadRadius: 9.0,
                        ),
                      ],
                    ),
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Text(
                        widget.text,
                        style: const TextStyle(
                          color: AppColors.preto,
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
          )),
    );
  }

  Widget _buildPhoneButton() {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      height: 28,
      padding: const EdgeInsets.symmetric(
        horizontal: 4,
      ),
      decoration: BoxDecoration(
        color: isHovered ? widget.fillColor.withOpacity(0.5) : widget.fillColor,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            blurStyle: BlurStyle.solid,
            color: widget.fillColor,
            blurRadius: 5.0,
            spreadRadius: 5.0,
          ),
        ],
      ),
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Text(
          widget.text,
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
