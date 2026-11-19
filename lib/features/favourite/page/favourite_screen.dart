import 'package:flutter/material.dart';
import 'package:momen/utiles/app_colors.dart';
import 'package:momen/utiles/text_styles.dart';
import 'package:momen/widgets/main_button.dart';
import 'package:momen/features/shop/data/dummy_data.dart';
import 'package:momen/features/favourite/widgets/favourite_item_card.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Favourite",
          style: TextStyles.headline2.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemCount: favouriteProductsList.length,
                separatorBuilder: (context, index) =>
                    Divider(thickness: 1, color: AppColors.dividerColor),
                itemBuilder: (context, index) {
                  var product = favouriteProductsList[index];
                  return FavouriteItemCard(product: product);
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: SizedBox(
                width: double.infinity,
                height: 56,
                child: MainButton(title: "Add All To Cart", onTap: () {}),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
