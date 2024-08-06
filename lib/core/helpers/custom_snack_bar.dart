import 'package:flutter/material.dart';
import 'package:reciply/core/utils/app_colors.dart';
import 'package:reciply/core/utils/app_styles.dart';

getShowSnackBar(BuildContext context, String content) {
  try {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        dismissDirection: DismissDirection.down,
        showCloseIcon: true,
        closeIconColor: AppColors.f1Color,
        clipBehavior: Clip.none,
        elevation: 10,
        padding: const EdgeInsets.only(
          top: 12,
          bottom: 12,
          left: 16,
          right: 10,
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(14),
            topRight: Radius.circular(14),
          ),
        ),
        duration: const Duration(milliseconds: 500),
        backgroundColor: Colors.black,
        content: Text(
          content,
          style: AppStyles.regular16(context).copyWith(
            color: Colors.white,
          ),
        ),
      ),
    );
  } catch (e) {
    //
  }
}
