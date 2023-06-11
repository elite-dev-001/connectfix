import 'package:connect_fix/components/misc/spacer.dart';
import 'package:connect_fix/pages/auth/user/password/new_password.dart';
import 'package:connect_fix/pages/auth/widgets/auth_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Otp extends StatelessWidget {
  const Otp({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> numbers = ["2", "0", "5", "3"];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
          size: 18,
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              VSpace(141.w),
              Text(
                "Enter OTP",
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w900,
                  color: const Color(0xFF333030),
                ),
              ),
              VSpace(7.w),
              SizedBox(
                width: 269.w,
                child: Text(
                  "We have sent a code to your phone number, please check and enter the code below",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF565050),
                  ),
                ),
              ),
              VSpace(50.w),
              SizedBox(
                width: 269.w,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: numbers.map((e) => pin(e)).toList(),
                    ),
                    VSpace(18.w),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Didn't receive code?",
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF565050),
                          ),
                        ),
                        // HSpace(16.w),
                        Text(
                          "Resend Code",
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF6169D2),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              VSpace(57.w),
              AuthBtn(
                text: "Submit code",
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NewPassword(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget pin(String number) {
    return Container(
      height: 47,
      width: 47,
      decoration: const BoxDecoration(color: Color(0xFFD9D9D9)),
      alignment: Alignment.center,
      child: Text(
        number,
        style: TextStyle(
          fontSize: 40.sp,
          fontWeight: FontWeight.w200,
          color: const Color(0xFF333030),
        ),
      ),
    );
  }
}
