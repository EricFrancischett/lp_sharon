import 'package:flutter/material.dart';
import 'package:lp_sharon/core/app_colors.dart';
import 'package:lp_sharon/widgets/app_button.dart';
import 'package:lp_sharon/widgets/blur_title.dart';

class IsForBlock extends StatelessWidget {
  const IsForBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const BlurTitle(
          title: 'O EVENTO É PARA VOCÊ QUE',
          fillColor: AppColors.rosa,
        ),
        const SizedBox(
          height: 8,
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
            text: 'busca aprimorar suas ',
            children: [
              TextSpan(
                text: 'habilidades',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextSpan(
                text: ' e elevar\nsua ',
              ),
              TextSpan(
                text: 'autoridade',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text: ' nas redes sociais.',
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
                fontSize: 18,
                height: 1,
                fontWeight: FontWeight.w700,
                color: AppColors.rosa,
                fontFamily: 'Poppins',
                fontStyle: FontStyle.italic),
            text: '01.',
            children: [
              TextSpan(
                text: '  empreendedores',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: AppColors.branco,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        RichText(
          text: const TextSpan(
            style: TextStyle(
                fontSize: 18,
                height: 1,
                fontWeight: FontWeight.w700,
                color: AppColors.rosa,
                fontFamily: 'Poppins',
                fontStyle: FontStyle.italic),
            text: '02.',
            children: [
              TextSpan(
                text: '  equipes de marketing',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: AppColors.branco,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        RichText(
          text: const TextSpan(
            style: TextStyle(
                fontSize: 18,
                height: 1,
                fontWeight: FontWeight.w700,
                color: AppColors.rosa,
                fontFamily: 'Poppins',
                fontStyle: FontStyle.italic),
            text: '03.',
            children: [
              TextSpan(
                text: '  entusiastas a trabalhar na área de social media',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: AppColors.branco,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        const SizedBox(
          width: 260,
          child: AppButton(
            text: 'Eu quero fazer parte!',
            fillColor: AppColors.rosa,
          ),
        )
      ],
    );
  }
}
