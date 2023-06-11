import 'package:connect_fix/components/misc/spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthSuccess extends StatelessWidget {
  const AuthSuccess(
      {super.key, this.text = "Your verification process is successful"});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            VSpace(147.w),
            Text(
              "Successful",
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w900,
                color: const Color(0xFF333030),
              ),
            ),
            VSpace(107.w),
            CircleAvatar(
              radius: 84.w,
              backgroundColor: const Color(0xFF6169D2),
              child: Icon(
                Icons.check,
                size: 85.w,
                color: Colors.white,
              ),
            ),
            VSpace(24.w),
            Text(
              "Your verification process is successful",
              style: TextStyle(
                fontSize: 10.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF565050),
              ),
            )
          ],
        ),
      ),
    );
  }
}
