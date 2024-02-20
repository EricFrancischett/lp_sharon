import 'package:flutter/material.dart';
import 'package:lp_sharon/core/app_colors.dart';
import 'package:lp_sharon/core/image_constants.dart';
import 'package:lp_sharon/core/resolutions.dart';
import 'package:lp_sharon/widgets/app_button.dart';

class ThirdBackgroundBlock extends StatelessWidget {
  final CurrentResolution currentResolution;
  const ThirdBackgroundBlock({
    super.key,
    required this.currentResolution,
  });

  @override
  Widget build(BuildContext context) {
    bool isCellPhone = currentResolution == CurrentResolution.isCellPhone;
    bool isTablet = currentResolution == CurrentResolution.isTablet;
    return Row(
      children: [
        Expanded(
          child: Container(
            foregroundDecoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black,
                  Colors.transparent,
                  Colors.transparent,
                  Colors.black,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0, 0.1, 0.9, 1],
              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: (isCellPhone || isTablet)
                    ? BoxFit.fitHeight
                    : BoxFit.fitWidth,
                opacity: 0.8,
                image: const AssetImage(
                  ImageConstants.background3,
                ),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 100,
                ),
                _buildPriceCard(
                  price: 'R\$249',
                  round: '1 LOTE',
                  cents: ',90',
                ),
                const SizedBox(
                  height: 30,
                ),
                _buildPriceCard(
                  price: 'R\$349',
                  round: '2 LOTE',
                  cents: ',90',
                ),
                const SizedBox(
                  height: 30,
                ),
                _buildPriceCard(
                  price: 'R\$449',
                  round: '3 LOTE',
                  cents: ',90',
                ),
                const SizedBox(
                  height: 80,
                ),
                SizedBox(
                  width: isCellPhone ? 250 : 340,
                  child: const AppButton(
                    text: 'Adquira seu ingresso aqui!',
                    fillColor: AppColors.amarelo,
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPriceCard(
      {required String price, required String round, required String cents}) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.centerLeft,
      children: [
        Container(
          decoration: BoxDecoration(
            color: AppColors.amarelo,
            borderRadius: BorderRadius.circular(16),
            boxShadow: const [
              BoxShadow(
                blurStyle: BlurStyle.solid,
                color: AppColors.amarelo,
                blurRadius: 9.0,
                spreadRadius: 9.0,
              ),
            ],
          ),
          width: 260,
          height: 88,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    price,
                    style: const TextStyle(
                      color: AppColors.preto,
                      fontSize: 44,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(
                      cents,
                      style: const TextStyle(
                        color: AppColors.preto,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Positioned(
          left: -40,
          child: Container(
            width: 65,
            height: 24,
            decoration: BoxDecoration(
              color: AppColors.branco,
              borderRadius: BorderRadius.circular(6),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(1, 3),
                  color: AppColors.preto.withOpacity(0.3),
                  blurRadius: 4.0,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 2),
              child: Text(
                round,
                style: const TextStyle(
                  color: AppColors.preto,
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
