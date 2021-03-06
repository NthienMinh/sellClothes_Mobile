import 'package:flutter/material.dart';
import 'package:mobile_ui/Colors.dart';
import 'package:mobile_ui/dimensions.dart';
import 'package:mobile_ui/screens/forgot_password/forgot_password_form.dart';
import 'package:mobile_ui/screens/widgets/big_text.dart';
import 'package:mobile_ui/screens/widgets/small_text.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: Dimensions.number30),
            Container(
              width: double.maxFinite,
              height: Dimensions.number45 + Dimensions.number10,
              child: Column(
                children: [
                  Text(
                    "FTEAM SHOP",
                    style: TextStyle(
                        fontSize: Dimensions.font20 * 2,
                        color: AppColor.mainColor,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            SizedBox(height: Dimensions.number30),
            BigText(
              text: "FORGOT PASSWORD",
              size: Dimensions.font26,
              color: AppColor.mainBlackColor,
            ),
            SizedBox(height: Dimensions.number7),
            SmallText(
              text: "Mật khẩu mới sẽ được gửi tới Email của bạn!",
              size: Dimensions.font16,
              color: AppColor.paraColor,
            ),
            SizedBox(height: Dimensions.number30),
            ForgotPassWordForm(),
            SizedBox(height: Dimensions.number100 * 0.55),
            Text(
              "@Ứng dụng được phát triển bởi nhóm FTeam",
              style: TextStyle(color: AppColor.paraColor),
            )
          ],
        ),
      ),
    );
  }
}
