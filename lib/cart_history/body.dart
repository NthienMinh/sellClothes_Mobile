import 'package:flutter/material.dart';
import 'package:mobile_ui/Colors.dart';
import 'package:mobile_ui/cart_history/item_cart_history_form.dart';
import 'package:mobile_ui/dimensions.dart';
import 'package:mobile_ui/home/home_page.dart';
import 'package:mobile_ui/widgets/app_icon.dart';
import 'package:mobile_ui/widgets/big_text.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        Positioned(
            top: Dimensions.number25 * 1.5,
            left: Dimensions.number15,
            right: Dimensions.number15,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: AppIcon(
                    icon: Icons.arrow_back_ios_new,
                    iconColor: Colors.white,
                    backgroundColor: AppColor.mainColor,
                    size: Dimensions.number25,
                  ),
                ),
                BigText(
                  text: 'Tổng: 1.500.000 VND',
                  color: Colors.red,
                )
                // SizedBox(width: Dimensions.number100 * 2),
                // GestureDetector(
                //   onTap: () => Navigator.pushNamed(context, HomePage.routeName),
                //   child: AppIcon(
                //     icon: Icons.home_outlined,
                //     iconColor: Colors.white,
                //     backgroundColor: AppColor.mainColor,
                //     size: Dimensions.number25,
                //   ),
                // ),
              ],
            )),
        Positioned(
            top: Dimensions.number70,
            left: Dimensions.number15,
            right: Dimensions.number15,
            bottom: 0,
            child: ItemCartHistoryForm())
      ]),
    );
  }
}