import 'package:connect_fix/components/misc/spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Recommended extends StatelessWidget {
  const Recommended({super.key});

  @override
  Widget build(BuildContext context) {
    final jobs = [
      {
        "img": "assets/images/painter.png",
        "name": "Matthew",
        "job": "Painter",
      },
      {
        "img": "assets/images/plumber.png",
        "name": "Ahmad Usman",
        "job": "Plumber",
      },
      {
        "img": "assets/images/electrician.png",
        "name": "Segun Ola",
        "job": "Electrician",
      },
      {
        "img": "assets/images/cleaner.png",
        "name": "Kay",
        "job": "Cleaner",
      },
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Recommended",
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w700,
            color: const Color(0xFF333030),
          ),
        ),
        Text(
          "Based on your recent activities",
          style: TextStyle(
            fontSize: 10.sp,
            fontWeight: FontWeight.w400,
            color: const Color(0xFF565050),
          ),
        ),
        VSpace(12.w),
        Column(
          children: jobs
              .map((e) => card(e["img"]!, e["name"]!, e["job"]!, context))
              .toList(),
        )
      ],
    );
  }

  Widget card(String img, String name, String job, BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.fromLTRB(20.w, 16.w, 16.w, 14.w),
      margin: EdgeInsets.only(bottom: 28.w),
      decoration: BoxDecoration(
          color: Colors.white,
          // border: Border.all(),
          borderRadius: BorderRadius.circular(5.w),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 4),
                blurRadius: 4,
                spreadRadius: 0,
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
                  job,
                  style: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF333030),
                  ),
                ),
                VSpace(2.w),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_sharp,
                      size: 12,
                    ),
                    Expanded(
                      child: Text(
                        "Rivers state, Obio Akpor, Mercyland",
                        style: TextStyle(
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF333030),
                        ),
                      ),
                    )
                  ],
                ),
                VSpace(14.w),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Jobs",
                          style: TextStyle(
                            fontSize: 8.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF333030),
                          ),
                        ),
                        Text(
                          "100",
                          style: TextStyle(
                            fontSize: 8.sp,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF333030),
                          ),
                        ),
                      ],
                    ),
                    // HSpace(31.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Rating",
                          style: TextStyle(
                            fontSize: 8.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF333030),
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 8,
                            ),
                            Text(
                              "4.0",
                              style: TextStyle(
                                fontSize: 8.sp,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF333030),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Rate",
                          style: TextStyle(
                            fontSize: 8.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF333030),
                          ),
                        ),
                        Text(
                          "\$15/hr",
                          style: TextStyle(
                            fontSize: 8.sp,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF333030),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(21, 4.w, 18.w, 5.w),
                      decoration: BoxDecoration(
                          color: Color(0xFF6169D2),
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 4),
                                blurRadius: 4,
                                spreadRadius: 4,
                                color: Colors.black.withOpacity(0.25))
                          ]),
                      child: Text(
                        "Book",
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFFFFFFFF),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
