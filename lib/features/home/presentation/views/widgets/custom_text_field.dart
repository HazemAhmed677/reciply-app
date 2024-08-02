import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reciply/core/utils/app_colors.dart';
import 'package:reciply/core/utils/app_styles.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  String input = '';
  @override
  Widget build(BuildContext context) {
    return Card(
      child: TextField(
        clipBehavior: Clip.hardEdge,
        cursorColor: Colors.lightBlueAccent,
        style: AppStyles.regular14(context),
        onSubmitted: (value) {},
        onChanged: (value) {
          input = value;
        },
        decoration: InputDecoration(
          hintText: 'Search recipes',
          prefixIcon: IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 20,
              color: AppColors.c1Color,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(14),
            ),
            borderSide: BorderSide(
              color: AppColors.c1Color,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(14),
            ),
            borderSide: BorderSide(
              color: Colors.lightBlueAccent,
            ),
          ),
        ),
      ),
    );
  }
}
