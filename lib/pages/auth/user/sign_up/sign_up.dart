import 'package:connect_fix/components/misc/spacer.dart';
import 'package:connect_fix/pages/auth/user/sign_up/sign_up_2.dart';
import 'package:connect_fix/pages/auth/widgets/auth_btn.dart';
import 'package:connect_fix/pages/auth/widgets/auth_form.dart';
import 'package:connect_fix/pages/auth/widgets/auth_upload.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                VSpace(71.w),
                Text(
                  "Sign up",
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w900,
                    color: const Color(0xFF333030),
                  ),
                ),
                VSpace(37.w),
                const AuthForm(label: "Full name"),
                const AuthForm(
                  label: "Gender",
                  drop: true,
                ),
                const AuthForm(label: "Email Address"),
                const AuthForm(label: "State of Origin"),
                const AuthForm(
                  label: "LGA",
                  drop: true,
                ),
                const AuthForm(
                  label: "Town/Area",
                  drop: true,
                ),
                VSpace(30.w),
                const AuthUpload(),
                VSpace(27.w),
                AuthBtn(
                  text: "Continue",
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUp2(),
                    ),
                  ),
                ),
                VSpace(50.w)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
