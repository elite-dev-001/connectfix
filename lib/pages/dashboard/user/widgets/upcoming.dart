import 'package:connect_fix/components/misc/spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Upcoming extends StatelessWidget {
  const Upcoming({super.key});

  @override
  Widget build(BuildContext context) {
    final jobs = [
      {
        "img": "assets/images/booking/booking_1.png",
        "name": "Ngozi Bello",
      },
      {
        "img": "assets/images/booking/booking_2.png",
        "name": "Victoria",
      },
      {
        "img": "assets/images/booking/booking_3.png",
        "name": "Omolade",
      },
      {
        "img": "assets/images/booking/booking_4.png",
        "name": "Omolade",
      },
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Upcoming Bookings",
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF565050),
              ),
            ),
            Text(
              "Booking History",
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF6169D2),
              ),
            ),
          ],
        ),
        VSpace(4.w),
        Text(
          "Today",
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w600,
            color: const Color(0xFF333030),
          ),
        ),
        VSpace(12.w),
        Column(
          children:
              jobs.map((e) => card(e["img"]!, e["name"]!, context)).toList(),
        )
      ],
    );
  }

  Widget card(String img, String name, BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.fromLTRB(33.w, 47.w, 16.w, 30.w),
      margin: EdgeInsets.only(bottom: 28.w),
      decoration: BoxDecoration(
          color: Colors.white,
          // border: Border.all(),
          borderRadius: BorderRadius.circular(5.w),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 2),
                blurRadius: 4,
                spreadRadius: 3,
                color: Colors.black.withOpacity(0.25))
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            // decoration: BoxDecoration(border: Border.all()),
            width: MediaQuery.of(context).size.width * .25,
            child: Align(
              alignment: Alignment.center,
              child: Image.asset(img),
            ),
          ),
          // HSpace(15.w),
          SizedBox(
            // decoration: BoxDecoration(border: Border.all()),
            width: MediaQuery.of(context).size.width * .5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF333030),
                  ),
                ),
                Text(
                  "Today | 12:00PM",
                  style: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF333030),
                  ),
                ),
                VSpace(2.w),
              ],
            ),
          )
        ],
      ),
    );
  }
}
