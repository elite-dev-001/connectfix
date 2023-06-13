import 'package:connect_fix/components/misc/spacer.dart';
import 'package:connect_fix/pages/auth/widgets/auth_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
          "Payment Method",
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w700,
            color: const Color(0xFF565050),
          ),
        ),
        centerTitle: true,
        actions: [
          Image.asset("assets/images/pay_image.png"),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              VSpace(39.w),
              Container(
                padding: EdgeInsets.fromLTRB(17.64.w, 15.79.w, 0.w, 10.93.w),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 0,
                        blurRadius: 2,
                        offset: const Offset(2, 2),
                        color: const Color(0xFF2E2424).withOpacity(0.25),
                      )
                    ]),
                child: Row(
                  children: [
                    SvgPicture.asset("assets/icons/paystack.svg"),
                    HSpace(6.24.w),
                    Text(
                      "Paystack",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFF131E32),
                      ),
                    )
                  ],
                ),
              ),
              VSpace(30.w),
              const AuthForm(label: "Card"),
              VSpace(22.w),
              const AuthForm(label: "Card Number"),
              const VSpace(26),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Flexible(child: AuthForm(label: "CVC")),
                  HSpace(22.w),
                  const Flexible(child: AuthForm(label: "Expiry Date")),
                ],
              ),
              VSpace(51.w),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Minimum amount to pay-in",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF565050),
                    ),
                  ),
                  Text(
                    "#1000.00",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF565050),
                    ),
                  ),
                ],
              ),
              VSpace(9.w),
              Row(
                children: [
                  const CircleAvatar(
                    radius: 8,
                    backgroundColor: Color(0xFF6169D2),
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 12,
                    ),
                  ),
                  HSpace(5.w),
                  Text(
                    "Save Card information",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF565050),
                    ),
                  ),
                ],
              ),
              VSpace(26.w),
              Container(
                height: 40.w,
                decoration: BoxDecoration(
                  color: Color(0xFF6169D2),
                  borderRadius: BorderRadius.circular(5),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Confirm",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFFFFFFFF),
                  ),
                ),
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
}
