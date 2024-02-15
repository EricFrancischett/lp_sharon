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
    bool isCellPhone = currentResolution == CurrentResolution.isCellPhone;
    return Scaffold(
      backgroundColor: AppColors.preto,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: isCellPhone?  60*0.8 : 60,
            ),
            IntroBlock(
              currentResolution: currentResolution,
            ),
            SizedBox(
              height: isCellPhone?  120*0.8 : 120,
            ),
            VideoBlock(
              currentResolution: currentResolution,
            ),
            SizedBox(
              height: isCellPhone?  80*0.8 : 80,
            ),
            GradientBarBlock(
              currentResolution: currentResolution,
            ),
            SizedBox(
              height: isCellPhone?  80*0.8 : 80,
            ),
            FirstBackgroundBlock(
              currentResolution: currentResolution,
            ),
            SizedBox(
              height: isCellPhone?  80*0.8 : 80,
            ),
            IsForBlock(
              currentResolution: currentResolution,
            ),
            SizedBox(
              height: isCellPhone?  160*0.8 : 160,
            ),
            LearnBlock(
              currentResolution: currentResolution,
            ),
            SizedBox(
              height: isCellPhone?  160*0.8 : 160,
            ),
            GuestBlock(
              currentResolution: currentResolution,
            ),
            SizedBox(
              height: isCellPhone?  160*0.8 : 160,
            ),
            SecondBackgroundBlock(
              currentResolution: currentResolution,
            ),
            SizedBox(
              height: isCellPhone?  160*0.8 : 160,
            ),
            FeedbackBlock(
              currentResolution: currentResolution,
            ),
            SizedBox(
              height: isCellPhone?  160*0.8 : 160,
            ),
            LastEditionBlock(
              currentResolution: currentResolution,
            ),
            SizedBox(
              height: isCellPhone?  160*0.8 : 160,
            ),
            AppointmentBlock(
              currentResolution: currentResolution,
            ),
            SizedBox(
              height: isCellPhone?  160*0.8 : 160,
            ),
            ThirdBackgroundBlock(
              currentResolution: currentResolution,
            ),
            SizedBox(
              height: isCellPhone?  100*0.8 : 100,
            ),
            EndBlock(
              currentResolution: currentResolution,
            ),
            SizedBox(
              height: isCellPhone?  100*0.8 : 100,
            )
          ],
        ),
      ),
    );
  }
}
