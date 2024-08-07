import 'package:flutter/material.dart';
import 'package:reciply/core/utils/app_colors.dart';
import 'package:reciply/core/utils/app_styles.dart';

getShowSnackBar(BuildContext context, String content) {
  try {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        dismissDirection: DismissDirection.down,
        showCloseIcon: true,
        closeIconColor: Colors.black,
        clipBehavior: Clip.none,
        elevation: 6,
        padding: const EdgeInsets.only(
          top: 10,
          bottom: 10,
          left: 16,
          right: 10,
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              14,
            ),
            topRight: Radius.circular(
              14,
            ),
            bottomRight: Radius.circular(
              8,
            ),
            bottomLeft: Radius.circular(
              8,
            ),
          ),
        ),
        duration: const Duration(milliseconds: 600),
        backgroundColor: Colors.grey.shade300,
        content: Text(
          content,
          style: AppStyles.regular16(context).copyWith(
            color: Colors.black,
          ),
        ),
      ),
    );
  } catch (e) {
    //
  }
}
