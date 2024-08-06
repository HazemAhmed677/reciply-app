import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:reciply/constants.dart';
import 'package:reciply/core/utils/app_routers.dart';
import 'package:reciply/core/utils/app_styles.dart';
import 'package:reciply/core/models/recipe_model/meal_model.dart';
import 'package:reciply/core/widgets/save_widget.dart';

class TreandingCard extends StatefulWidget {
  const TreandingCard({super.key, required this.mealModel});
  final MealModel mealModel;
  @override
  State<TreandingCard> createState() => _TreandingCardState();
}

class _TreandingCardState extends State<TreandingCard> {
  bool flag = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            bottom: 10.0,
          ),
          child: SizedBox(
            height: 190,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      16,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        offset: const Offset(
                          -2,
                          8,
                        ),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: Card(
                    elevation: 10,
                    shadowColor: Colors.grey.shade200,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        16,
                      ),
                    ),
                    child: AspectRatio(
                      aspectRatio: 280 / 180,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(
                          16,
                        ),
                        onTap: () {
                          GoRouter.of(context).push(AppRouters.recipeInfoID,
                              extra: widget.mealModel);
                        },
                        child: Container(
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              16,
                            ),
                          ),
                          child: CachedNetworkImage(
                            fit: BoxFit.cover,
                            imageUrl: widget.mealModel.strMealThumb!,
                            errorWidget: (context, url, error) {
                              return Image.asset(kTestImage);
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 8,
                  right: 12,
                  child: SaveWidget(
                    mealModel: widget.mealModel,
                    blurRadius: 12,
                  ),
                ),
                InkWell(
                  onTap: () {},
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
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 8.0,
          ),
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 250,
            ),
            child: Text(
              widget.mealModel.strMeal!,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppStyles.regular14(context),
            ),
          ),
        ),
      ],
    );
  }
}
