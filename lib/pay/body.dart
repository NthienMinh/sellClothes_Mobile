import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mobile_ui/Colors.dart';
import 'package:mobile_ui/dimensions.dart';
import 'package:mobile_ui/home/home_page.dart';
import 'package:mobile_ui/pay/infor_pay_form.dart';
import 'package:mobile_ui/widgets/app_icon.dart';
import 'package:mobile_ui/widgets/big_text.dart';
import 'package:mobile_ui/widgets/small_text.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool? bank = false;
  bool? cod = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: Dimensions.number30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
              SizedBox(width: Dimensions.number100 * 2),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, HomePage.routeName),
                child: AppIcon(
                  icon: Icons.home_outlined,
                  iconColor: Colors.white,
                  backgroundColor: AppColor.mainColor,
                  size: Dimensions.number25,
                ),
              ),
            ],
          ),
          SizedBox(height: Dimensions.number25),
          Container(
            width: double.maxFinite,
            height: Dimensions.number45 + Dimensions.number10,
            child: Column(
              children: [
                Text(
                  "FTeam Shop",
                  style: TextStyle(
                      fontSize: Dimensions.font20 * 2,
                      color: AppColor.mainColor,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          SizedBox(height: Dimensions.number20),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: Dimensions.number10,
                ),
                child: BigText(
                  text: "Thông tin giao hàng: ",
                  color: AppColor.mainColor,
                ),
              ),
            ],
          ),
          SizedBox(height: Dimensions.number10),
          InforPayForm(),
          SizedBox(height: Dimensions.number15),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: Dimensions.number10,
                ),
                child: BigText(
                  text: "Phương thức thanh toán:  ",
                  color: AppColor.mainColor,
                ),
              ),
            ],
          ),
          SizedBox(height: Dimensions.number5),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: Dimensions.number10,
                ),
                child: SmallText(
                  text:
                      "(*Bạn có thể chọn 1 trong 2 hình thức: chuyển khoản hoặc ship COD)",
                  color: AppColor.mainColor,
                ),
              ),
            ],
          ),
          SizedBox(height: Dimensions.number5),
          Row(
            children: [
              Checkbox(
                value: bank,
                activeColor: AppColor.mainColor,
                onChanged: (value) {
                  setState(() {
                    bank = value;
                  });
                },
              ),
              SmallText(
                text: "Chuyển khoản",
                size: Dimensions.font16,
                color: AppColor.mainColor,
              )
            ],
          ),
          Container(
            height: Dimensions.number100 * 2,
            width: Dimensions.number100 * 2,
            child: Image(
                fit: BoxFit.cover,
                image: AssetImage("assets/image/payment.png")),
          ),
          SizedBox(height: Dimensions.number5),
          Padding(
            padding: EdgeInsets.only(
              left: Dimensions.number10,
            ),
            child: SmallText(
              text:
                  '(*Sau khi chuyển khoản sẽ mất một khoản thời gian để shop xác nhận và gửi mail đến bạn! Nếu sau 24h không thấy mail phản hồi hãy liên lạc shop qua hotline 0902662247 nhé ^_^)',
              color: AppColor.mainColor,
            ),
          ),
          SizedBox(height: Dimensions.number5),
          Row(
            children: [
              Checkbox(
                value: cod,
                activeColor: AppColor.mainColor,
                onChanged: (value) {
                  setState(() {
                    cod = value;
                  });
                },
              ),
              SmallText(
                text: "Ship COD",
                size: Dimensions.font16,
                color: AppColor.mainColor,
              )
            ],
          ),
          SizedBox(height: Dimensions.number5),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: Dimensions.number10,
                ),
                child: BigText(
                  text: "Tổng: ",
                  color: AppColor.mainColor,
                ),
              ),
            ],
          ),
          SizedBox(height: Dimensions.number5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BigText(
                text: "1.500.000 VND",
                color: Colors.red,
              ),
              //Nút bấm thêm hàng, thành tiền
              GestureDetector(
                onTap: () => _showCupertinoDialog(context),
                child: Container(
                  alignment: Alignment.center,
                  width: Dimensions.number100 * 1.3,
                  padding: EdgeInsets.only(
                      left: Dimensions.number20,
                      right: Dimensions.number20,
                      top: Dimensions.number10,
                      bottom: Dimensions.number10),
                  child: BigText(
                    text: "Hoàn tất",
                    size: Dimensions.number15,
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.border20),
                      color: AppColor.mainColor),
                ),
              )
            ],
          ),
          SizedBox(height: Dimensions.number15),
        ],
      ),
    );
  }
}

_dismissDialog(BuildContext context) {
  Navigator.popAndPushNamed(context, HomePage.routeName);
}

void _showCupertinoDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: BigText(
            text: 'Mua hàng thành công!',
            color: AppColor.mainBlackColor,
          ),
          actions: <Widget>[
            TextButton(
                onPressed: () {
                  _dismissDialog(context);
                },
                child: SmallText(
                  text: 'Đóng',
                  color: AppColor.mainColor,
                )),
          ],
        );
      });
}
