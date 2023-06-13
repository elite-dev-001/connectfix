import 'package:connect_fix/components/misc/spacer.dart';
import 'package:connect_fix/pages/dashboard/user/services/services.dart';
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
        "job": "Cleaner",
        "services": [
          {
            "name": "Chika",
            "img": "assets/images/cleaner/cleaner_1.png",
          },
          {
            "name": "Mike",
            "img": "assets/images/cleaner/cleaner_2.png",
          },
          {
            "name": "Kay",
            "img": "assets/images/cleaner/cleaner_3.png",
          },
          {
            "name": "Dede",
            "img": "assets/images/cleaner/cleaner_4.png",
          },
          {
            "name": "Josh",
            "img": "assets/images/cleaner/cleaner_5.png",
          },
        ]
      },
      {
        "text": "Plumbing",
        "icon": "assets/icons/yellow.svg",
        "color": 0xFFF0BB34,
        "job": "Plumber",
        "services": [
          {
            "name": "Ahmad Usman",
            "img": "assets/images/plumbing/plumb_1.png",
          },
          {
            "name": "Felix",
            "img": "assets/images/plumbing/plumb_2.png",
          },
          {
            "name": "Chima",
            "img": "assets/images/plumbing/plumb_3.png",
          },
          {
            "name": "Steve Bolaji",
            "img": "assets/images/plumbing/plumb_4.png",
          },
          {
            "name": "Jeremiah",
            "img": "assets/images/plumbing/plumb_5.png",
          },
        ]
      },
      {
        "text": "Electrical",
        "icon": "assets/icons/red.svg",
        "color": 0xFFD82222,
        "job": "Electrician",
        "services": [
          {
            "name": "Eze",
            "img": "assets/images/electrical/elect_1.png",
          },
          {
            "name": "Segun Ola",
            "img": "assets/images/electrical/elect_2.png",
          },
          {
            "name": "Luke",
            "img": "assets/images/electrical/elect_3.png",
          },
          {
            "name": "Steve Bolaji",
            "img": "assets/images/electrical/elect_4.png",
          },
          {
            "name": "Jeremiah",
            "img": "assets/images/electrical/elect_5.png",
          },
        ]
      },
      {
        "text": "Painting",
        "icon": "assets/icons/blue.svg",
        "color": 0xFF6169D2,
        "job": "Painter",
        "services": [
          {
            "name": "Mathew",
            "img": "assets/images/painting/painting_1.png",
          },
          {
            "name": "Segun Ola",
            "img": "assets/images/painting/painting_2.png",
          },
          {
            "name": "Mark",
            "img": "assets/images/painting/painting_3.png",
          },
          {
            "name": "Steve Bolaji",
            "img": "assets/images/painting/painting_4.png",
          },
          {
            "name": "Jeremiah",
            "img": "assets/images/painting/painting_5.png",
          },
        ]
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
                .map((e) => category(
                      e["text"],
                      e["icon"],
                      e["color"],
                      context,
                      e["services"],
                      e["job"],
                    ))
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
    BuildContext context,
    List<Map<String, String>> services,
    String job,
  ) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ServicesPage(
                    text: text,
                    job: job,
                    services: services,
                  ))),
      child: Container(
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
      ),
    );
  }
}
