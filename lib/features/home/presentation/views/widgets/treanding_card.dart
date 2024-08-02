import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reciply/constants.dart';
import 'package:reciply/core/utils/app_colors.dart';
import 'package:reciply/core/utils/app_styles.dart';

class TreandingCard extends StatefulWidget {
  const TreandingCard({super.key});

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
          padding: const EdgeInsets.only(bottom: 12.0),
          child: SizedBox(
            height: 190,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      38,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        offset: const Offset(
                          -2,
                          4,
                        ),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: Card(
                    elevation: 4,
                    shadowColor: Colors.grey.shade200,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(52),
                    ),
                    child: AspectRatio(
                      aspectRatio: 280 / 180,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          bottom: 0.20,
                        ),
                        child: Container(
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              8,
                            ),
                          ),
                          child: Image.asset(
                            testImage,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 8,
                  right: 12,
                  child: CircleAvatar(
                    backgroundColor: AppColors.white,
                    child: InkWell(
                      onTap: () {
                        flag = !flag;
                        setState(() {});
                      },
                      child: Icon(
                        (!flag)
                            ? FontAwesomeIcons.bookmark
                            : FontAwesomeIcons.solidBookmark,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
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
            left: 4.0,
          ),
          child: Text(
            'How to make sushi at home',
            style: AppStyles.semiBold16(context),
          ),
        ),
      ],
    );
  }
}
