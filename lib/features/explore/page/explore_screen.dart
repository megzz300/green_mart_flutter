import 'package:flutter/material.dart';
import 'package:momen/features/explore/widgets/category_card.dart';
import 'package:momen/features/search/page/search_screen.dart';
import 'package:momen/features/shop/data/category_model.dart';
import 'package:momen/functions/navigations.dart';
import 'package:momen/utiles/text_styles.dart';
import 'package:gap/gap.dart';

import 'package:momen/widgets/custom_field.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Find Products", style: TextStyles.headline2),
        actions: [
          IconButton(
            onPressed: () {
              pushTo(context, SearchScreen());
            },
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Customfield(hintText: "Search", prefixIcon: Icons.search),
            Gap(20),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 0.9,
                ),
                itemBuilder: (context, index) {
                  var product = categoriesList[index];
                  return CategoryCard(product: product);
                },
                itemCount: categoriesList.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
