import 'package:connect_fix/components/misc/spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Activate extends StatelessWidget {
  const Activate({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> texts = [
      "500 for 30 days",
      "1000 for 60 days",
      "1500 for 90 days",
      "2000 for 120 days",
    ];
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Activate your profession",
            style: TextStyle(
              fontSize: 12.sp,
              color: const Color(0xFF565050),
              fontWeight: FontWeight.w700,
            ),
          ),
          VSpace(8.w),
          Column(
            children: texts.map((e) => tab(e, context)).toList(),
          ),
        ],
      ),
    );
  }

  Widget tab(String text, BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.fromLTRB(16.w, 10.w, 0, 8.w),
      margin: EdgeInsets.only(bottom: 4.w),
      decoration: BoxDecoration(
        color: const Color(0xFF6169D2),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 14.sp,
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
