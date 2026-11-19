import 'package:flutter/material.dart';
import 'package:momen/features/cart/page/accepted_sreen.dart';
import 'package:momen/features/cart/widgets/sheet_bottom_item_row.dart';
import 'package:momen/functions/navigations.dart';
import 'package:momen/utiles/app_colors.dart';
import 'package:momen/utiles/text_styles.dart';
import 'package:momen/widgets/main_button.dart';
import 'package:gap/gap.dart';

void showCheckoutBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: AppColors.whiteColor,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(40),
        topRight: Radius.circular(40),
      ),
    ),
    builder: (context) {
      return Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Checkout", style: TextStyles.headline2),
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.close),
                ),
              ],
            ),
            const Divider(),
            Gap(10),

            CheckoutRowItem(title: "Delivery", value: "Select Method"),
            CheckoutRowItem(title: "Payment", value: "Card"),
            CheckoutRowItem(title: "Promo Code", value: "Pick Discount"),
            CheckoutRowItem(title: "Total Cost", value: "\$13.97"),

            Text(
              "By placing an order you agree to our Terms And Conditions",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            Gap(20),

            MainButton(
              title: "Place Order",
              onTap: () {
                pushReplacement(context, OrderAcceptedScreen());
              },
            ),
            Gap(10),
          ],
        ),
      );
    },
  );
}
