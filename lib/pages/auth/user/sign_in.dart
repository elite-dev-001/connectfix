import 'package:connect_fix/components/misc/spacer.dart';
import 'package:connect_fix/pages/auth/user/password/forget_password.dart';
import 'package:connect_fix/pages/auth/widgets/auth_btn.dart';
import 'package:connect_fix/pages/auth/widgets/auth_form.dart';
import 'package:connect_fix/pages/dashboard/user/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                VSpace(74.w),
                Image.asset("assets/images/blue_logo.png"),
                VSpace(22.w),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    fontSize: 34.sp,
                    fontWeight: FontWeight.w800,
                    color: const Color(0xFF565050),
                  ),
                ),
                Text(
                  "Sign in into your account",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF565050),
                  ),
                ),
                VSpace(29.w),
                Text(
                  "Sign in",
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w900,
                    color: const Color(0xFF333030),
                  ),
                ),
                VSpace(29.w),
                const AuthForm(label: "Phone number or email"),
                const AuthForm(
                  label: "Password",
                  isPassword: true,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ForgetPassword(),
                      ),
                    ),
                    child: Text(
                      "Forget Password?",
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF565050),
                      ),
                    ),
                  ),
                ),
                VSpace(45.w),
                AuthBtn(
                  text: "Sign in",
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Dashboard(),
                    ),
                  ),
                ),
                VSpace(14.w),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Dont't have an account?",
                      style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF565050),
                      ),
                    ),
                    HSpace(16.w),
                    Text(
                      "Sign up",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w800,
                        color: const Color(0xFF6169D2),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
