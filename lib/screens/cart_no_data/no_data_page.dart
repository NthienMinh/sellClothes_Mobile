import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_ui/Colors.dart';
import 'package:mobile_ui/dimensions.dart';
import 'package:mobile_ui/screens/widgets/app_icon.dart';

class NoDataPage extends StatelessWidget {
  static String routeName = "/noDataPage";
  final String imgPath;

  const NoDataPage({Key? key, this.imgPath = "assets/image/empty-cart.png"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned(
            top: Dimensions.number25 * 1.5,
            left: Dimensions.number15,
            right: Dimensions.number15,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: AppIcon(
                    icon: Icons.arrow_back_ios_new,
                    iconColor: Colors.white,
                    backgroundColor: AppColor.mainColor,
                    size: Dimensions.number25,
                  ),
                ),
              ],
            )),
        Positioned(
            top: Dimensions.number70,
            left: Dimensions.number15,
            right: Dimensions.number15,
            bottom: 0,
            child: Container(
              child: Image.asset(imgPath),
            ))
      ]),
    );
  }
}