import 'package:connect_fix/components/misc/spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Balance extends StatelessWidget {
  const Balance({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.55,
          padding: EdgeInsets.only(top: 26.w, left: 24.w, bottom: 25.08.w),
          decoration: BoxDecoration(
              color: const Color(0xFFD82222),
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0, 4),
                    spreadRadius: 0,
                    blurRadius: 4,
                    color: const Color(0xFF000000).withOpacity(0.25))
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Available Balance",
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  HSpace(9.5.w),
                  const Icon(
                    Icons.visibility_outlined,
                    size: 15,
                    color: Colors.white,
                  ),
                ],
              ),
              VSpace(3.w),
              Text(
                "N1,000.00",
                style: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
        HSpace(7.w),
        Expanded(
          child: Container(
            height: 100.w,
            // padding: EdgeInsets.only(top: 26.w, bottom: 25.08.w),
            decoration: BoxDecoration(
              color: const Color(0xFF6169D2),
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0, 4),
                    spreadRadius: 0,
                    blurRadius: 4,
                    color: const Color(0xFF000000).withOpacity(0.25))
              ],
            ),
            alignment: Alignment.center,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.add),
                Text("Add money"),
              ],
            ),
          ),
        )
      ],
    );
  }
}
