import 'package:flutter/material.dart';
import 'package:lp_sharon/core/app_colors.dart';
import 'package:lp_sharon/core/image_constants.dart';
import 'package:lp_sharon/core/resolutions.dart';
import 'package:lp_sharon/widgets/app_button.dart';
import 'package:lp_sharon/widgets/app_counter.dart';
import 'package:marquee/marquee.dart';

class IntroBlock extends StatelessWidget {
  final CurrentResolution currentResolution;
  const IntroBlock({
    super.key,
    required this.currentResolution,
  });

  @override
  Widget build(BuildContext context) {
    switch (currentResolution) {
      case CurrentResolution.isWeb:
        return _buildWebVersion();
      case CurrentResolution.isTablet:
        return _buildTabletVersion();
      case CurrentResolution.isCellPhone:
        return _buildMobileVersion();
    }
  }

  Widget _buildWebVersion() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 1024,
          child: Stack(
            alignment: AlignmentDirectional.centerStart,
            children: [
              Image.asset(
                ImageConstants.fotoSharon,
                width: 669,
                height: 475,
              ),
              Positioned(
                left: 550,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Image.asset(
                            ImageConstants.logoSharon,
                            width: 237,
                            height: 61,
                          ),
                          const SizedBox(
                            height: 27,
                          ),
                          const Text(
                            'O treinamento\nque transforma!',
                            style: TextStyle(
                                color: AppColors.branco,
                                fontSize: 28,
                                fontWeight: FontWeight.w500,
                                height: 1),
                            textAlign: TextAlign.right,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'EDIÇÃO II',
                            style: TextStyle(
                              color: AppColors.rosa,
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              height: 1,
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          const Text(
                            '19 de maio | 9h às 19h\nChácara Sentinela | Colombo',
                            style: TextStyle(
                              color: AppColors.cinza,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              height: 1.2,
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 27,
                    ),
                    const AppButton(
                      text: 'Quero garantir minha vaga!',
                      fillColor: AppColors.amarelo,
                    ),
                    const SizedBox(
                      height: 27,
                    ),
                    const AppCounter()
                  ],
                ),
              ),
            ],
          ),
        ),
        Transform.translate(
          offset: const Offset(0.0, -10.0),
          child: Transform.rotate(
            angle: 0.057,
            child: Container(
              height: 38,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColors.amarelo,
                    AppColors.rosa,
                    AppColors.roxo,
                  ],
                ),
              ),
              child: Marquee(
                text: ' O TREINAMENTO QUE TRANSFOMA! ',
                style: const TextStyle(
                  color: AppColors.preto,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTabletVersion() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 768,
          child: Stack(
            alignment: AlignmentDirectional.centerStart,
            children: [
              Image.asset(
                ImageConstants.fotoSharon,
                width: 669 * 0.66,
                height: 475 * 0.66,
              ),
              Positioned(
                left: 550 * 0.66,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Image.asset(
                            ImageConstants.logoSharon,
                            width: 237,
                            height: 61,
                          ),
                          const SizedBox(
                            height: 27,
                          ),
                          const Text(
                            'O treinamento\nque transforma!',
                            style: TextStyle(
                                color: AppColors.branco,
                                fontSize: 28,
                                fontWeight: FontWeight.w500,
                                height: 1),
                            textAlign: TextAlign.right,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'EDIÇÃO II',
                            style: TextStyle(
                              color: AppColors.rosa,
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              height: 1,
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          const Text(
                            '19 de maio | 9h às 19h\nChácara Sentinela | Colombo',
                            style: TextStyle(
                              color: AppColors.cinza,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              height: 1.2,
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Transform.translate(
          offset: const Offset(0.0, -10.0),
          child: Transform.rotate(
            angle: 0.057,
            child: Container(
              height: 38,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColors.amarelo,
                    AppColors.rosa,
                    AppColors.roxo,
                  ],
                ),
              ),
              child: Marquee(
                text: ' O TREINAMENTO QUE TRANSFOMA! ',
                style: const TextStyle(
                  color: AppColors.preto,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 60,
        ),
        const SizedBox(
          width: 350,
          child: AppButton(
            text: 'Quero garantir minha vaga!',
            fillColor: AppColors.amarelo,
          ),
        ),
        const SizedBox(
          height: 27,
        ),
        const AppCounter()
      ],
    );
  }

  Widget _buildMobileVersion() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 320,
          child: Stack(
            clipBehavior: Clip.none,
            alignment: AlignmentDirectional.centerStart,
            children: [
              Transform.translate(
                offset: const Offset(-60, 0),
                child: Image.asset(
                  ImageConstants.fotoSharon,
                  width: 280,
                  height: 200,
                ),
              ),
              Positioned(
                left: 170,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const SizedBox(
                            height: 40,
                          ),
                          Image.asset(
                            ImageConstants.logoSharon,
                            width: 155,
                            height: 40,
                          ),
                          const SizedBox(
                            height: 17,
                          ),
                          const Text(
                            'O treinamento\nque transforma!',
                            style: TextStyle(
                              color: AppColors.branco,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              height: 1,
                            ),
                            textAlign: TextAlign.right,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'EDIÇÃO II',
                            style: TextStyle(
                              color: AppColors.rosa,
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              height: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Transform.translate(
          offset: const Offset(0.0, -10.0),
          child: Transform.rotate(
            angle: 0.057,
            child: Container(
              height: 38,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColors.amarelo,
                    AppColors.rosa,
                    AppColors.roxo,
                  ],
                ),
              ),
              child: Marquee(
                text: ' O TREINAMENTO QUE TRANSFOMA! ',
                style: const TextStyle(
                  color: AppColors.preto,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const SizedBox(
          width: 320,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '19 de maio | 9h às 19h\nChácara Sentinela | Colombo',
                style: TextStyle(
                  color: AppColors.cinza,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  height: 1.2,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 17,
              ),
              SizedBox(
                width: 300,
                child: AppButton(
                  text: 'Quero garantir minha vaga!',
                  fillColor: AppColors.amarelo,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              AppCounter()
            ],
          ),
        )
      ],
    );
  }
}
