import 'package:flutter/material.dart';
import 'package:lp_sharon/core/app_colors.dart';
import 'package:lp_sharon/core/image_constants.dart';
import 'package:lp_sharon/widgets/blur_title.dart';

class LearnBlock extends StatelessWidget {
  const LearnBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        BlurTitle(
          title: 'O que você irá aprender'.toUpperCase(),
          fillColor: AppColors.amarelo,
        ),
        const SizedBox(
          height: 40,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildCheckLine(
              description: 'O poder das ferramentas do Instagram.',
            ),
            _buildCheckLine(
              description: 'Branding e sua influência na percepção online.',
            ),
            _buildCheckLine(
              description: 'Imagem pessoal e profissional nas redes sociais.',
            ),
            _buildCheckLine(
              description:
                  'Identificação e superação dos sabotadores comportamentais.',
            ),
            _buildCheckLine(
              description: 'Dicas de empreendedorismo.',
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildCheckLine({required String description}) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 4,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            ImageConstants.check,
            width: 27,
            height: 27,
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            description,
            style: const TextStyle(
              color: AppColors.branco,
              fontSize: 18,
              fontWeight: FontWeight.w400,
              height: 1,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
