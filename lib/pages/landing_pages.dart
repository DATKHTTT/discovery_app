import 'package:discovery_app/misc/app_colors.dart';
import 'package:discovery_app/misc/app_fonts.dart';
import 'package:discovery_app/misc/app_images.dart';
import 'package:discovery_app/misc/app_style.dart';
import 'package:discovery_app/routes/routers.dart';
import 'package:discovery_app/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 1.sw,
        height: 1.sh,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppImages.welcome), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 64.h, horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Discovery',
                style: AppStyle.sth11,
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'No matter what in the world you want to find,\nwe can help search for you',
                style: AppStyle.sth41,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              SizedBox(
                height: 10.h,
              ),
              ServiceButton(
                text: 'Explore',
                onTap: () {
                  Navigator.pushNamed(context, RouterName.mainPage);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
