import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reciply/constants.dart';
import 'package:reciply/core/utils/app_colors.dart';
import 'package:reciply/core/utils/app_styles.dart';

class SavedItem extends StatefulWidget {
  const SavedItem({
    super.key,
    this.flag,
    required this.aspectRatio,
  });
  final bool? flag;
  final double aspectRatio;
  @override
  State<SavedItem> createState() => _SavedItemState();
}

class _SavedItemState extends State<SavedItem> {
  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: widget.aspectRatio,
      child: Padding(
        padding: EdgeInsets.only(
          bottom: (widget.flag == null) ? 16.0 : 0,
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    testImage,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              clipBehavior: Clip.none,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  16,
                ),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.grey.shade400.withOpacity(0.5),
                    Colors.black.withOpacity(0.8)
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 14,
                right: 14,
                bottom: 14,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  (widget.flag == null)
                      ? Text(
                          'Traditional spare ribs baked',
                          style: AppStyles.semiBold14(context).copyWith(
                            color: AppColors.white,
                          ),
                        )
                      : const Text(''),
                  const Spacer(),
                  SvgPicture.asset('assets/images/timer.svg'),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    '20 min',
                    style: AppStyles.semiBold12(context).copyWith(
                      color: const Color(0xffD9D9D9),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  InkWell(
                    onTap: () {
                      flag = !flag;
                      setState(() {});
                    },
                    child: CircleAvatar(
                      radius: 14,
                      backgroundColor: AppColors.white,
                      child: Icon(
                        (!flag)
                            ? FontAwesomeIcons.bookmark
                            : FontAwesomeIcons.solidBookmark,
                        color: Colors.black,
                        size: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
