import 'package:flutter/cupertino.dart';
import 'package:mobile_ui/dimensions.dart';
import 'package:mobile_ui/screens/widgets/small_text.dart';

class IconAndTextWidget extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String text;
  const IconAndTextWidget(
      {Key? key,
      required this.icon,
      required this.text,
      required this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: iconColor),
        SizedBox(width: Dimensions.number5),
        SmallText(text: text)
      ],
    );
  }
}
