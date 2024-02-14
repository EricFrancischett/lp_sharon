import 'package:flutter/material.dart';
import 'package:lp_sharon/core/app_colors.dart';
import 'package:lp_sharon/core/image_constants.dart';
import 'package:lp_sharon/core/resolutions.dart';

class GradientBarBlock extends StatelessWidget {
  final CurrentResolution currentResolution;
  const GradientBarBlock({
    super.key,
    required this.currentResolution,
  });

  @override
  Widget build(BuildContext context) {
    bool isCellPhone = currentResolution == CurrentResolution.isCellPhone;
    return isCellPhone
        ? _buildPhoneVersion()
        : Container(
            height: 180,
            width: 700,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              gradient: const LinearGradient(
                colors: [
                  AppColors.amarelo,
                  AppColors.rosa,
                  AppColors.roxo,
                ],
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildGradientRow(
                  imagePath: ImageConstants.hamburguer,
                  title: 'Food\ntrucks',
                ),
                _buildGradientRow(
                  imagePath: ImageConstants.grupo,
                  title: 'Networking',
                ),
                _buildGradientRow(
                  imagePath: ImageConstants.arvore,
                  title: 'Espaço em\nmeio a natureza',
                ),
                _buildGradientRow(
                  imagePath: ImageConstants.bolsa,
                  title: 'Kit de\nboas-vindas ',
                ),
              ],
            ),
          );
  }

  Widget _buildGradientRow({required imagePath, required String title}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          imagePath,
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          title,
          style: const TextStyle(
            color: AppColors.preto,
            fontSize: 16,
            fontWeight: FontWeight.w400,
            height: 1,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildPhoneVersion() {
    return Container(
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.amarelo,
            AppColors.rosa,
            AppColors.roxo,
          ],
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          _buildGradientRow(
            imagePath: ImageConstants.hamburguer,
            title: 'Food\ntrucks',
          ),
          const SizedBox(
            height: 20,
          ),
          _buildGradientRow(
            imagePath: ImageConstants.grupo,
            title: 'Networking',
          ),
          const SizedBox(
            height: 20,
          ),
          _buildGradientRow(
            imagePath: ImageConstants.arvore,
            title: 'Espaço em\nmeio a natureza',
          ),
          const SizedBox(
            height: 20,
          ),
          _buildGradientRow(
            imagePath: ImageConstants.bolsa,
            title: 'Kit de\nboas-vindas ',
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
