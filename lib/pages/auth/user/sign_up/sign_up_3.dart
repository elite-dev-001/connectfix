import 'package:connect_fix/components/misc/spacer.dart';
import 'package:connect_fix/pages/auth/user/sign_up/terms.dart';
import 'package:connect_fix/pages/auth/widgets/auth_btn.dart';
import 'package:connect_fix/pages/auth/widgets/auth_form.dart';
import 'package:connect_fix/pages/auth/widgets/auth_upload.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUp3 extends StatelessWidget {
  const SignUp3({super.key});

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
                VSpace(97.w),
                const AuthForm(label: "Referee name 1"),
                const AuthForm(label: "Referee Business name 1"),
                const AuthForm(label: "Referee Phone number"),
                VSpace(16.w),
                const AuthUpload(
                  text: "Upload profile picture",
                ),
                VSpace(26.w),
                const AuthForm(
                  label: "Password",
                  isPassword: true,
                ),
                const AuthForm(
                  label: "Confirm Password",
                  isPassword: true,
                ),
                VSpace(16.w),
                Row(
                  children: [
                    Container(
                      height: 60.w,
                      width: 82.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.w),
                          border: Border.all(color: const Color(0xFF7E7B7B))),
                      child: const Icon(Icons.arrow_back_ios_new_rounded),
                    ),
                    HSpace(19.w),
                    Expanded(
                      child: AuthBtn(
                        text: "Next",
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Terms(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
