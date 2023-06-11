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
          "Based on your recent activities xxx",
          style: TextStyle(
            fontSize: 10.sp,
            fontWeight: FontWeight.w400,
            color: const Color(0xFF565050),
          ),
        ),
        VSpace(12.w),
        Text("hello"),
        Column(
          children: jobs
              .map((e) => card(
                    e["img"]!,
                    e["name"]!,
                    e["job"]!,
                  ))
              .toList(),
        )
      ],
    );
  }

  Widget card(String img, String name, String job) {
    return Container(
      padding: EdgeInsets.fromLTRB(20.w, 16.w, 16.w, 14.w),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.w),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 4),
                blurRadius: 4,
                spreadRadius: 0,
                color: Colors.black.withOpacity(0.25))
          ]),
      child: Row(
        children: [
          Image.asset(img),
          Column(
            children: [
              Text(name),
              Text(job),
              Row(
                children: [
                  Icon(Icons.location_on_sharp),
                  Text("Rivers state, Obio Akpor, Mercyland")
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Text("Jobs"),
                      Text("100"),
                    ],
                  ),
                  Column(
                    children: [
                      Text("Rating"),
                      Row(
                        children: [
                          Icon(Icons.star),
                          Text("4.0"),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text("Rate"),
                      Text("\$15/hr"),
                    ],
                  ),
                  Container(
                    child: Text("Book"),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
