import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reciply/core/helpers/custom_snack_bar.dart';
import 'package:reciply/core/models/recipe_model/meal_model.dart';
import 'package:url_launcher/url_launcher.dart';

class PlayVideo extends StatefulWidget {
  const PlayVideo({
    super.key,
    required this.mealModel,
  });
  final MealModel mealModel;

  @override
  State<PlayVideo> createState() => _PlayVideoState();
}

class _PlayVideoState extends State<PlayVideo> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        if (widget.mealModel.strYoutube != null) {
          Uri uri = Uri.parse(widget.mealModel.strYoutube!);

          if (await canLaunchUrl(uri)) {
            await launchUrl(uri);
          }
        } else {
          if (mounted) {
            setState(() {
              getShowSnackBar(context, 'Video is not available');
            });
          }
        }
      },
      child: Center(
        child: CircleAvatar(
          radius: 22,
          backgroundColor: const Color(
            0xff303030,
          ).withOpacity(0.3),
          child: SvgPicture.asset(
            'assets/images/Play.svg',
          ),
        ),
      ),
    );
  }
}
