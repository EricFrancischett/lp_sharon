import 'package:flutter/material.dart';
import 'package:lp_sharon/core/app_colors.dart';
import 'package:lp_sharon/core/image_constants.dart';
import 'package:lp_sharon/widgets/blur_title.dart';

class GuestBlock extends StatelessWidget {
  const GuestBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        BlurTitle(
          title: 'COM PALESTRANTES ESPECIALISTAS NO ASSUNTO'.toUpperCase(),
          fillColor: AppColors.rosa,
        ),
        const SizedBox(
          height: 40,
        ),
        Wrap(
          spacing: 15,
          children: [
            _buildGuestCard(
              bgImagePath: ImageConstants.sharonPic,
              name: 'Sharon\nStrapasson',
              role: 'Social Media e\nEstratégias Digitais',
              description:
                  'Como usar as\nferramentas das\nredes sociais a\nseu favor.',
            ),
            _buildGuestCard(
              bgImagePath: ImageConstants.thiagoPic,
              name: 'Thiago\nZanona',
              role: 'Branding Pessoal\ne Empresarial',
              description:
                  'Como o branding\nimpacta a\npercepção nas\nredes sociais.',
            ),
            _buildGuestCard(
              bgImagePath: ImageConstants.lucianaPic,
              name: 'Luciana\nBurko',
              role: 'Gestão de\nMarca',
              description:
                  'Gestão de Marca e\nTécnicas para uma\nmarca pessoal e\nprofissional positiva\nnas redes sociais.',
            ),
            _buildGuestCard(
              bgImagePath: ImageConstants.renataPic,
              name: 'Renata\nGuimarães',
              role: 'Empreendedorismo',
              description:
                  'Como não desviar\ndo foco, reduzir\nruídos na sua\ncomunicação e\nempreendedorismo.',
            ),
            _buildGuestCard(
              bgImagePath: ImageConstants.vanessaPic,
              name: 'Vanessa\nRichter',
              role: 'Desenvolvimento\nPessoal e Profissional',
              description: 'Sabotadores\ncomportamentais.',
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildGuestCard({
    required String bgImagePath,
    required String name,
    required String role,
    required String description,
  }) {
    return SizedBox(
      width: 170,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: 170,
                height: 250,
                foregroundDecoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.transparent,
                      Colors.black,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.2, 1],
                  ),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: AssetImage(
                      bgImagePath,
                    ),
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              SizedBox(
                width: 170,
                height: 250,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 17,
                    right: 17,
                    top: 15,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        ImageConstants.verified,
                        width: 23,
                        height: 23,
                      ),
                      const Spacer(),
                      SizedBox(
                        height: 45,
                        child: Text(
                          name,
                          style: const TextStyle(
                            color: AppColors.rosa,
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            height: 1,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 9,
                      ),
                      SizedBox(
                        height: 30,
                        child: Text(
                          role,
                          style: TextStyle(
                            color: AppColors.branco.withOpacity(0.7),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            height: 1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 26,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              description,
              style: const TextStyle(
                color: AppColors.branco,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                height: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
