import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lp_sharon/core/app_colors.dart';

class AppCounter extends StatefulWidget {
  const AppCounter({super.key});

  @override
  State<AppCounter> createState() => _AppCounterState();
}

class _AppCounterState extends State<AppCounter> {
  final DateTime eventDate = DateTime(2024, 5, 19, 9, 0, 0);
  // ignore: unused_field
  late Timer _timer;

  @override
  void initState() {
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        setState(() {});
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Duration difference = eventDate.difference(DateTime.now());
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '${difference.inDays}',
              style: const TextStyle(
                color: AppColors.cinza,
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Text(
              'DIAS',
              style: TextStyle(
                color: AppColors.cinza,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 24,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '${difference.inHours.remainder(24)}',
              style: const TextStyle(
                color: AppColors.cinza,
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Text(
              'HORAS',
              style: TextStyle(
                color: AppColors.cinza,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 24,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '${difference.inMinutes.remainder(60)}',
              style: const TextStyle(
                color: AppColors.cinza,
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Text(
              'MINUTOS',
              style: TextStyle(
                color: AppColors.cinza,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 24,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '${difference.inSeconds.remainder(60)}',
              style: const TextStyle(
                color: AppColors.cinza,
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Text(
              'SEGUNDOS',
              style: TextStyle(
                color: AppColors.cinza,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
