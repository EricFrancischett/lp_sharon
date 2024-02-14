import 'package:flutter/material.dart';
import 'package:lp_sharon/core/app_colors.dart';
import 'package:lp_sharon/core/image_constants.dart';
import 'package:lp_sharon/widgets/app_button.dart';
import 'package:lp_sharon/widgets/blur_title.dart';

class FirstBackgroundBlock extends StatelessWidget {
  const FirstBackgroundBlock({super.key});

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
                  ImageConstants.background1,
                ),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 80,
                ),
                BlurTitle(
                  title: 'Saia do básico...\nbusque pelo profissional!'
                      .toUpperCase(),
                  fillColor: AppColors.amarelo,
                ),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  width: 520,
                  child: Wrap(
                    spacing: 80,
                    runSpacing: 40,
                    children: [
                      _buildCheckMessage(
                        description:
                            'Evento de 10 horas\ntotalmente presencial\ne imersivo',
                      ),
                      _buildCheckMessage(
                        description:
                            'Ambiente cercado pela\nnatureza potencializando\nseus aprendizados.',
                      ),
                      _buildCheckMessage(
                        description:
                            'Aprimore suas\nhabilidades técnicas\ne comportamentais.',
                      ),
                      _buildCheckMessage(
                        description:
                            'Fortaleça seu networking\nconectando-se com\nprofissionais de diversas\náreas ao longo do dia.',
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  '#VemTransformar',
                  style: TextStyle(
                    color: AppColors.amarelo,
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    const SizedBox(
                      width: 313,
                      child: AppButton(
                        text: 'Quero comprar!',
                        fillColor: AppColors.amarelo,
                      ),
                    ),
                    Positioned(
                      top: -60,
                      left: -100,
                      child: Image.asset(
                        ImageConstants.hashtag,
                        width: 160,
                        height: 160,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 80,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCheckMessage({required String description}) {
    return SizedBox(
      width: 220,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            ImageConstants.check,
            width: 27,
            height: 27,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            description,
            style: const TextStyle(
              color: AppColors.branco,
              fontSize: 16,
              fontWeight: FontWeight.w400,
              height: 1,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
