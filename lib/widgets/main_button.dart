import 'package:flutter/material.dart';
import 'package:momen/utiles/text_styles.dart';

import 'package:momen/utiles/app_colors.dart';

class MainButton extends StatelessWidget {
  const MainButton({super.key, required this.title, required this.onTap});
  final String title;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.greenColor,
        minimumSize: Size(double.infinity, 60),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      onPressed: onTap,
      child: Text(
        title,
        style: TextStyles.subtitle.copyWith(
          color: AppColors.whiteColor,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
