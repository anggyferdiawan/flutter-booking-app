import 'package:booking_app/config/theme/app_color.dart';
import 'package:booking_app/config/theme/app_font.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    this.type = PrimaryButtonType.type3,
    required this.onPressed,
    required this.text,
    this.width = 78,
  }) : super(key: key);
  
  final PrimaryButtonType type;
  final VoidCallback? onPressed;
  final String text;
  final double height = 24;
  final double width;

  @override
  Widget build(BuildContext context) {
    return type == PrimaryButtonType.type1
        ? _type1()
        : type == PrimaryButtonType.type2
            ? _type2()
            : _type3();
  }

  Widget _type1() {
    return SizedBox(
      width: width,
      height: 24,
      child: ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.ink01,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4)
        ),
      ),
      child: Text(
        text,
        style: AppFonts.componentSmall.copyWith(color: AppColors.ink06)
        ),
      ),
    );
  }

  Widget _type2() {
    return SizedBox(
      width: width,
      height: 32,
      child: ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.ink01,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4)
        ),
      ),
      child: Text(
        text,
        style: AppFonts.componentMediumBold.copyWith(color: AppColors.ink06)
        ),
      ),
    );
  }

  Widget _type3() {
    return SizedBox(
      width: width,
      height: 40,
      child: ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.ink01,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4)
        ),
      ),
      child: Text(
        text,
        style: AppFonts.componentLarge.copyWith(color: AppColors.ink06)
        ),
      ),
    );
  }
}

enum PrimaryButtonType {
  type1,
  type2,
  type3,
}
