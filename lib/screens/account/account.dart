import 'package:flutter/material.dart';
import 'package:mobile_ui/Colors.dart';
import 'package:mobile_ui/screens/account/body.dart';
import 'package:mobile_ui/screens/widgets/big_text.dart';

class AccountScreen extends StatelessWidget {
  static String routeName = "/account";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.mainColor,
        title: BigText(
          text: "Tài Khoản",
          size: 24,
          color: Colors.white,
        ),
        automaticallyImplyLeading: false,
      ),
      body: Body(),
    );
  }
}
