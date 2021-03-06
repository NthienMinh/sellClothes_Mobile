import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  static double pageView = screenHeight / 2.1;
  static double pageViewContainer = screenHeight / 3;
  static double pageViewTextContainer = screenHeight / 6;

  //number
  static double number5 = screenHeight / 128;
  static double number7 = screenHeight / 91.4;
  static double number10 = screenHeight / 64;
  static double number15 = screenHeight / 42.6;
  static double number20 = screenHeight / 32;
  static double number24 = screenHeight / 26.7;
  static double number25 = screenHeight / 25.6;
  static double number30 = screenHeight / 21.3;
  static double number40 = screenHeight / 16;
  static double number45 = screenHeight / 14.2;
  static double number70 = screenHeight / 9.14;
  static double number85 = screenHeight / 7.5;
  static double number100 = screenHeight / 6.4;
  static double number280 = screenHeight / 2.285;
  static double number320 = screenHeight / 2;
  //font
  static double font8 = screenHeight / 80;
  static double font16 = screenHeight / 40;
  static double font20 = screenHeight / 32;
  static double font26 = screenHeight / 24.6;
  //border
  static double border30 = screenHeight / 21.3;
  static double border15 = screenHeight / 42.6;
  static double border20 = screenHeight / 32;

  //URL
  static String API_URL = 'http://192.168.1.210:3000';

  //error

  static final RegExp emailValidatorRegExp =
      RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  static const String kEmailNullError = "Vui lòng nhập email";
  static const String kInvalidEmailError = "Email không hợp lệ";
  static const String kInvalidPhoneError = "SĐT không hợp lệ";
  static const String kPassNullError = "Vui lòng nhập mật khẩu";
  static const String kShortPassError = "Mật khẩu quá ngắn";
  static const String kMatchPassError = "Mật khẩu không trùng khớp";
  static const String kNamelNullError = "Vui lòng nhập tên của bạn";
  static const String kPhoneNumberNullError = "Vui lòng nhập số điện thoại";
  static const String kAddressNullError = "Vui lòng nhập địa chỉ";
}
