import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stroll_bonfire/utils/utils.dart';

class RoundButton extends StatelessWidget {
  String? icon;
  bool hasBorder = false;
  void Function()? onTap;
 RoundButton({this.icon,required this.hasBorder,this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color:hasBorder ? Colors.transparent : AppColors.iconPurple ,
          shape: BoxShape.circle,
          border:hasBorder ?  Border.all(color: AppColors.iconPurple, width: 2.2) : null,
        ),
        child: SvgPicture.asset(icon!),
      ),
    );
  }
}
