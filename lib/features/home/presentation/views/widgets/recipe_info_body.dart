import 'package:flutter/material.dart';
import 'package:reciply/features/home/presentation/views/widgets/title_of_info_view.dart';

class RecipeInfoNody extends StatelessWidget {
  const RecipeInfoNody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const TitleOfInfoView(),
            Center(
              child: Container(
                height: 100,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
