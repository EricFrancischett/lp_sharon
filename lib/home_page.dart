import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lp_sharon/core/app_colors.dart';
import 'package:lp_sharon/core/image_constants.dart';
import 'package:marquee/marquee.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = YoutubePlayerController(
    params: const YoutubePlayerParams(
      mute: false,
      enableKeyboard: false,
      enableJavaScript: false,
      showControls: false,
      enableCaption: false,
      showFullscreenButton: false,
      showVideoAnnotations: false,
    ),
  );

  @override
  void initState() {
    _controller.cueVideoById(videoId: 'KN9oam-8Rt4');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.preto,
      body: SingleChildScrollView(
        child: Column(
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
                              SvgPicture.asset(
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
                        _buildYellowButton(
                          text: 'Quero garantir minha vaga!',
                        )
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
              height: 80,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 700,
                  child: AbsorbPointer(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: YoutubePlayer(
                        controller: _controller,
                        aspectRatio: 16 / 9,
                      ),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: const Offset(0, -18),
                  child: _buildYellowButton(
                    text: 'Eu quero fazer parte!',
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 160,
            ),
            Container(
              height: 180,
              width: 800,
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
            ),
            const SizedBox(
              height: 77,
            ),
            Image.asset(
              ImageConstants.background1,
              height: 659,
              fit: BoxFit.fitHeight,
            ),
          ],
        ),
      ),
    );
  }

  _buildYellowButton({required String text}) {
    return SizedBox(
      height: 36,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        decoration: BoxDecoration(
          color: AppColors.amarelo,
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [
            BoxShadow(
              blurStyle: BlurStyle.solid,
              color: AppColors.amarelo,
              blurRadius: 9.0,
              spreadRadius: 9.0,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Text(
            text,
            style: const TextStyle(
              color: AppColors.preto,
              fontSize: 20,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ),
    );
  }

  _buildGradientRow({required imagePath, required String title}) {
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
}
