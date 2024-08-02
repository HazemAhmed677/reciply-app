import 'package:flutter/material.dart';
import 'package:reciply/core/utils/app_styles.dart';
import 'package:reciply/features/saved/presentation/views/widgets/saved_item.dart';

class SavedViewBody extends StatelessWidget {
  const SavedViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Text(
            'Saved recipes',
            style: AppStyles.semiBold16(context).copyWith(
              fontSize: 20,
              color: const Color(0xff121212),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 20,
              ),
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 10,
                itemBuilder: (context, index) => const SavedItem(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
