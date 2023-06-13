import 'package:connect_fix/components/misc/spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: const Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF565050),
          ),
        ),
        title: Text(
          "Profile",
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w700,
            color: const Color(0xFF565050),
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 21.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VSpace(40.w),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset("assets/images/profile_pic_2.png"),
                      HSpace(22.w),
                      Text(
                        "Victor",
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF333030),
                        ),
                      )
                    ],
                  ),
                  Container(
                    height: 28.w,
                    width: 28.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF6169D2),
                    ),
                    alignment: Alignment.center,
                    child: const Icon(
                      Icons.edit,
                      color: Colors.white,
                      size: 12,
                    ),
                  )
                ],
              ),
              VSpace(51.w),
              tags("Favourite"),
              VSpace(11.w),
              tags("Notifications"),
              VSpace(20.w),
              Text(
                "ABOUT",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFF0A0A0A),
                ),
              ),
              VSpace(11.w),
              tags("Privacy Policy"),
              VSpace(11.w),
              tags("Terms of use"),
              VSpace(15.w),
              Text(
                "APP",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFF0A0A0A),
                ),
              ),
              VSpace(11.w),
              tags("Support"),
              VSpace(11.w),
              tags("Report a Bug"),
              VSpace(9.w),
              tags("App version 1.0"),
              VSpace(11.67.w),
              Row(
                children: [
                  const Icon(
                    Icons.login_outlined,
                    size: 18,
                    color: const Color(0xFFD82222),
                  ),
                  HSpace(7.67.w),
                  Text(
                    "Logout",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFFD82222),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF6169D2),
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/home.svg"),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/Calendar_Days.svg"),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/user.svg"),
            label: '',
          ),
        ],
      ),
    );
  }

  Widget tags(String text) {
    return Container(
      padding: EdgeInsets.only(bottom: 7.w),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Color(0xFFD9D9D9), width: 2.w),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF333030),
            ),
          ),
          const Icon(
            Icons.arrow_forward_ios,
            size: 12,
          ),
        ],
      ),
    );
  }
}
