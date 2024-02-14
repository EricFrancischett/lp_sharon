import 'package:flutter/material.dart';
import 'package:lp_sharon/core/app_colors.dart';
import 'package:lp_sharon/core/image_constants.dart';
import 'package:lp_sharon/widgets/app_button.dart';

class FeedbackBlock extends StatelessWidget {
  const FeedbackBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 768,
              height: 450,
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
                  const SizedBox(
                    height: 30,
                  ),
                  Image.asset(
                    ImageConstants.feedbackHorizontal,
                    width: 710,
                    height: 262,
                  ),
                ],
              ),
            ),
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
              top: 390,
              left: 35,
              child: Image.asset(
                ImageConstants.smallAt,
                width: 120,
                height: 120,
              ),
            ),
          ],
        ),
        Transform.translate(
          offset: const Offset(0, -18),
          child: const SizedBox(
            width: 320,
            child: AppButton(
              text: 'Adquira seu ingresso aqui!',
              fillColor: AppColors.rosa,
            ),
          ),
        ),
      ],
    );
  }
}
