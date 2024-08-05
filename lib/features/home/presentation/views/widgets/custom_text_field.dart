import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reciply/core/utils/app_colors.dart';
import 'package:reciply/core/utils/app_styles.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    this.onTap,
    this.onSubmettied,
  });
  final Function()? onTap;
  final Function(String)? onSubmettied;
  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  TextEditingController textEditingController = TextEditingController();
  String input = '';
  @override
  Widget build(BuildContext context) {
    return Card(
      child: TextField(
        controller: textEditingController,
        onTap: widget.onTap,
        clipBehavior: Clip.hardEdge,
        cursorColor: const Color.fromARGB(255, 213, 100, 100),
        style: AppStyles.regular14(context),
        onSubmitted: widget.onSubmettied,
        onChanged: (value) {
          input = value;
          setState(() {});
        },
        decoration: InputDecoration(
          hintText: 'Search recipe',
          prefixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 20,
              color: Color.fromARGB(255, 213, 100, 100),
            ),
          ),
          suffixIcon: (input != '')
              ? IconButton(
                  onPressed: () {
                    textEditingController.clear();
                    input = '';
                    setState(() {});
                  },
                  icon: const Icon(
                    Icons.cancel,
                    size: 20,
                    color: Colors.grey,
                  ),
                )
              : null,
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
              color: Color.fromARGB(255, 213, 100, 100),
            ),
          ),
        ),
      ),
    );
  }
}
