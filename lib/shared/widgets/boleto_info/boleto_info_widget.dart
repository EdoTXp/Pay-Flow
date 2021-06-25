import 'package:flutter/material.dart';
import 'package:pay_flow/shared/themes/app_colors.dart';
import 'package:pay_flow/shared/themes/app_images.dart';
import 'package:pay_flow/shared/themes/app_text_styles.dart';

class BoletoInfoWidget extends StatelessWidget {
  final int size;

  const BoletoInfoWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.secondary,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              AppImages.logoMini,
              color: AppColors.background,
              width: 56,
              height: 34,
            ),
            Container(
              width: 1,
              height: 32,
              color: AppColors.background,
            ),
            Text.rich(TextSpan(
                text: "Você tem ",
                style: AppTextStyles.captionBackground,
                children: [
                  TextSpan(
                    text: "$size boletos\n",
                    style: AppTextStyles.captionBackground,
                  ),
                  TextSpan(
                    text: "cadastrados para pagar",
                    style: AppTextStyles.captionBackground,
                  ),
                ]))
          ],
        ),
      ),
    );
  }
}
