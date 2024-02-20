import 'package:flutter/material.dart';
import 'package:lp_sharon/core/app_colors.dart';
import 'package:lp_sharon/core/image_constants.dart';
import 'package:lp_sharon/core/resolutions.dart';
import 'package:lp_sharon/widgets/app_button.dart';

class FeedbackBlock extends StatelessWidget {
  final CurrentResolution currentResolution;
  const FeedbackBlock({
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
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: isCellPhone ? 320 : 768,
                padding: const EdgeInsets.symmetric(
                  vertical: 40,
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(16),
                  ),
                  color: AppColors.preto.withOpacity(0.7),
                  gradient: const LinearGradient(
                    colors: [
                      AppColors.amarelo,
                      AppColors.rosa,
                      AppColors.roxo,
                    ],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          fontSize: 28,
                          height: 1,
                          fontWeight: FontWeight.w600,
                          color: AppColors.branco,
                          fontFamily: 'Poppins',
                          shadows: [
                            Shadow(
                              color: AppColors.branco,
                              blurRadius: 7,
                            ),
                          ],
                        ),
                        text: 'FEEDBACKS DOS \n',
                        children: [
                          TextSpan(
                            text: 'TRANSFORMADOS',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          TextSpan(
                            text: ' EM 2023',
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                    if (!isCellPhone)
                      const SizedBox(
                        height: 30,
                      ),
                    Image.asset(
                      isCellPhone
                          ? ImageConstants.feedbackvertical
                          : ImageConstants.feedbackHorizontal,
                      width: isCellPhone ? 323 : 710,
                      height: isCellPhone ? 560 : 262,
                    ),
                  ],
                ),
              ),
              if (!isCellPhone) ...{
                Positioned(
                  top: -120,
                  left: 570,
                  child: Image.asset(
                    ImageConstants.bigAt,
                    width: 200,
                    height: 200,
                  ),
                ),
                Positioned(
                  top: 380,
                  left: 35,
                  child: Image.asset(
                    ImageConstants.smallAt,
                    width: 120,
                    height: 120,
                  ),
                ),
              }
            ],
          ),
          Transform.translate(
            offset: const Offset(0, -18),
            child: SizedBox(
              width: isCellPhone ? 240 : 340,
              child: const AppButton(
                text: 'Adquira seu ingresso aqui!',
                fillColor: AppColors.rosa,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
