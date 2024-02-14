import 'package:flutter/material.dart';
import 'package:lp_sharon/blocks/appointment_block.dart';
import 'package:lp_sharon/blocks/end_block.dart';
import 'package:lp_sharon/blocks/feedback_block.dart';
import 'package:lp_sharon/blocks/first_background_block.dart';
import 'package:lp_sharon/blocks/gradient_bar_block.dart';
import 'package:lp_sharon/blocks/guest_block.dart';
import 'package:lp_sharon/blocks/intro_block.dart';
import 'package:lp_sharon/blocks/is_for_block.dart';
import 'package:lp_sharon/blocks/last_edition_block.dart';
import 'package:lp_sharon/blocks/learn_block.dart';
import 'package:lp_sharon/blocks/second_background_block.dart';
import 'package:lp_sharon/blocks/third_background_block.dart';
import 'package:lp_sharon/blocks/video_block.dart';
import 'package:lp_sharon/core/app_colors.dart';
import 'package:lp_sharon/core/resolutions.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    CurrentResolution currentResolution =
        Resolutions.getResolution(context: context);
    return Scaffold(
      backgroundColor: AppColors.preto,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 60,
            ),
            IntroBlock(
              currentResolution: currentResolution,
            ),
            const SizedBox(
              height: 120,
            ),
            VideoBlock(
              currentResolution: currentResolution,
            ),
            const SizedBox(
              height: 80,
            ),
            GradientBarBlock(
              currentResolution: currentResolution,
            ),
            const SizedBox(
              height: 80,
            ),
            const FirstBackgroundBlock(),
            const SizedBox(
              height: 80,
            ),
            const IsForBlock(),
            const SizedBox(
              height: 160,
            ),
            const LearnBlock(),
            const SizedBox(
              height: 160,
            ),
            const GuestBlock(),
            const SizedBox(
              height: 160,
            ),
            const SecondBackgroundBlock(),
            const SizedBox(
              height: 160,
            ),
            const FeedbackBlock(),
            const SizedBox(
              height: 160,
            ),
            const LastEditionBlock(),
            const SizedBox(
              height: 160,
            ),
            const AppointmentBlock(),
            const SizedBox(
              height: 160,
            ),
            const ThirdBackgroundBlock(),
            const SizedBox(
              height: 100,
            ),
            const EndBlock(),
            const SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
