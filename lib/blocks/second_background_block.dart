import 'package:flutter/material.dart';
import 'package:lp_sharon/core/app_colors.dart';
import 'package:lp_sharon/core/image_constants.dart';
import 'package:lp_sharon/widgets/app_button.dart';
import 'package:lp_sharon/widgets/blur_title.dart';

class SecondBackgroundBlock extends StatelessWidget {
  const SecondBackgroundBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            foregroundDecoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black,
                  Colors.transparent,
                  Colors.transparent,
                  Colors.black,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0, 0.1, 0.9, 1],
              ),
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fitWidth,
                opacity: 0.8,
                image: AssetImage(
                  ImageConstants.background2,
                ),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 100,
                ),
                const BlurTitle(
                  title: 'VOCÊ SERÁ\nOUTRA PESSOA',
                  fillColor: AppColors.amarelo,
                ),
                const SizedBox(
                  height: 40,
                ),
                RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      fontSize: 22,
                      height: 1,
                      fontWeight: FontWeight.w400,
                      color: AppColors.branco,
                      fontFamily: 'Poppins',
                    ),
                    text: 'Conhecimentos\n',
                    children: [
                      TextSpan(
                        text: 'práticos e aplicáveis.',
                        style: TextStyle(
                          color: AppColors.amarelo,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 40,
                ),
                RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      fontSize: 22,
                      height: 1,
                      fontWeight: FontWeight.w400,
                      color: AppColors.amarelo,
                      fontFamily: 'Poppins',
                    ),
                    text: 'Networking ',
                    children: [
                      TextSpan(
                        text: 'com\nprofissionais de\ndiversas áreas.',
                        style: TextStyle(
                          color: AppColors.branco,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 40,
                ),
                RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      fontSize: 22,
                      height: 1,
                      fontWeight: FontWeight.w400,
                      color: AppColors.branco,
                      fontFamily: 'Poppins',
                    ),
                    text: 'Experiência única de \n',
                    children: [
                      TextSpan(
                        text: 'aprendizado em\nmeio à natureza.',
                        style: TextStyle(
                          color: AppColors.amarelo,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 40,
                ),
                const SizedBox(
                  width: 315,
                  child: AppButton(
                    text: 'Quero me profissionalizar!',
                    fillColor: AppColors.amarelo,
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
