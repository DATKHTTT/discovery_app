import 'package:discovery_app/misc/app_colors.dart';
import 'package:discovery_app/misc/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarContainerWidget extends StatelessWidget {
  const AppBarContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundScaffoldColor,
      body: Stack(
        children: [
          SizedBox(
            height: 200.h,
            child: AppBar(
              centerTitle: true,
              automaticallyImplyLeading: false,
              elevation: 0,
              toolbarHeight: 90,
              backgroundColor: AppColors.backgroundScaffoldColor,
              flexibleSpace: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      gradient: AppColors.defaultGradientBackground,
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(48.r))
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    child: ClipRRect(
                      child: Image.asset(AppImages.oval1, fit: BoxFit.contain,),
                    )
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: ClipRRect(
                      child: Image.asset(AppImages.oval2, fit: BoxFit.contain,),
                    )
                  ),
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}