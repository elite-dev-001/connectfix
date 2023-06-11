import 'package:connect_fix/components/misc/spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> categories = [
      {
        "text": "Cleaning",
        "icon": "assets/icons/green.svg",
        "color": 0xFF5ACB73,
      },
      {
        "text": "Plumbing",
        "icon": "assets/icons/yellow.svg",
        "color": 0xFFF0BB34,
      },
      {
        "text": "Electrical",
        "icon": "assets/icons/red.svg",
        "color": 0xFFD82222,
      },
      {
        "text": "Painting",
        "icon": "assets/icons/blue.svg",
        "color": 0xFF6169D2,
      },
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Categories",
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w700,
            color: const Color(0xFF333030),
          ),
        ),
        VSpace(14.w),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: categories
                .map((e) => category(e["text"], e["icon"], e["color"]))
                .toList(),
          ),
        ),
      ],
    );
  }

  Widget category(
    String text,
    String icon,
    int color,
  ) {
    return Container(
      width: 83.w,
      height: 83.w,
      margin: EdgeInsets.only(right: 19.w, bottom: 18.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(color),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 4),
            blurRadius: 4,
            spreadRadius: 0,
            color: Colors.black.withOpacity(0.25),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(icon),
          VSpace(5.w),
          Text(
            text,
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
              color: const Color(0xFFFFFFFF),
            ),
          ),
        ],
      ),
    );
  }
}
