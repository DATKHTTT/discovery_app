import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../misc/app_colors.dart';

class ServiceButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const ServiceButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.w,
      height: 40.h,
      alignment: Alignment.center,
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(12)).r,
        color: AppColors.mainColor,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.all(Radius.circular(12)).r,
          splashColor: AppColors.secondColor,
          child: Center(
              child: Text(
            text,
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontFamily: 'rubik'),
          )),
        ),
      ),
    );
  }
}
