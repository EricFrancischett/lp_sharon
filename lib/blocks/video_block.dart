import 'package:flutter/material.dart';
import 'package:lp_sharon/core/app_colors.dart';
import 'package:lp_sharon/core/resolutions.dart';
import 'package:lp_sharon/widgets/app_button.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class VideoBlock extends StatefulWidget {
  final CurrentResolution currentResolution;
  const VideoBlock({
    super.key,
    required this.currentResolution,
  });

  @override
  State<VideoBlock> createState() => _VideoBlockState();
}

class _VideoBlockState extends State<VideoBlock> {
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
    _controller.cueVideoById(videoId: 'NQ6v-vu0yNM');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool isCellPhone = widget.currentResolution == CurrentResolution.isCellPhone;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: isCellPhone? 32 : 0),
          child: SizedBox(
            width: 700,
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
          offset: Offset(0, isCellPhone? -8 : -18),
          child: SizedBox(
            width: isCellPhone? 200 : 306,
            child: const AppButton(
              text: 'Eu quero fazer parte!',
              fillColor: AppColors.amarelo,
            ),
          ),
        ),
      ],
    );
  }
}
