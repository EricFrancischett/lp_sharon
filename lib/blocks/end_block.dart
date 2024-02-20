import 'package:flutter/material.dart';
import 'package:lp_sharon/core/app_colors.dart';
import 'package:lp_sharon/core/image_constants.dart';
import 'package:lp_sharon/core/resolutions.dart';
import 'package:lp_sharon/core/url_contants.dart';
import 'package:url_launcher/url_launcher.dart';

class EndBlock extends StatelessWidget {
  final CurrentResolution currentResolution;
  const EndBlock({
    super.key,
    required this.currentResolution,
  });

  @override
  Widget build(BuildContext context) {
    bool isCellPhone = currentResolution == CurrentResolution.isCellPhone;
    return Padding(
      padding: isCellPhone
          ? const EdgeInsets.symmetric(horizontal: 32)
          : const EdgeInsets.all(0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Recupere seu investimento${isCellPhone ? '' : '\n'}no primeiro trimestre de 2024!',
            style: TextStyle(
                color: AppColors.branco,
                fontSize: isCellPhone ? 30 : 40,
                fontWeight: FontWeight.w500,
                height: 1),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            'Acesse nossos canais de divulgação e saiba mais.',
            style: TextStyle(
                color: AppColors.branco,
                fontSize: isCellPhone ? 12 : 16,
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
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () async {
                    await launchUrl(
                      Uri.parse(
                        UrlConstants.instaLink,
                      ),
                    );
                  },
                  child: Image.asset(
                    ImageConstants.instaLogo,
                    width: isCellPhone ? 40 : 63,
                    height: isCellPhone ? 40 : 63,
                  ),
                ),
              ),
              SizedBox(
                width: isCellPhone ? 16 : 24,
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () async {
                    await launchUrl(
                      Uri.parse(
                        UrlConstants.wppLink,
                      ),
                    );
                  },
                  child: Image.asset(
                    ImageConstants.whatsLogo,
                    width: isCellPhone ? 40 : 63,
                    height: isCellPhone ? 40 : 63,
                  ),
                ),
              ),
              SizedBox(
                width: isCellPhone ? 16 : 24,
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () async {
                    await launchUrl(
                      Uri.parse(
                        UrlConstants.symplaLink,
                      ),
                    );
                  },
                  child: Image.asset(
                    ImageConstants.symplaLogo,
                    width: isCellPhone ? 40 : 63,
                    height: isCellPhone ? 40 : 63,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
