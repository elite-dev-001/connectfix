import 'package:connect_fix/components/misc/spacer.dart';
import 'package:connect_fix/pages/auth/user/sign_up/sign_up_3.dart';
import 'package:connect_fix/pages/auth/widgets/auth_btn.dart';
import 'package:connect_fix/pages/auth/widgets/auth_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUp2 extends StatelessWidget {
  const SignUp2({super.key});

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
                const AuthForm(label: "Home/Resident Address"),
                const AuthForm(
                  label: "Resident State",
                  drop: true,
                ),
                const AuthForm(
                  label: "Resident LGA",
                  drop: true,
                ),
                const AuthForm(label: "Resident Town/Area"),
                const AuthForm(label: "Business Address"),
                const AuthForm(label: "Phone Number"),
                const AuthForm(label: "Alternate Phone Number (optional)"),
                VSpace(27.w),
                Row(
                  children: [
                    Container(
                      height: 60.w,
                      width: 82.w,
                      // padding: EdgeInsets.symmetric(
                      //   vertical: 22.w,
                      //   horizontal: 34.w,
                      // ),
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
                            builder: (context) => const SignUp3(),
                          ),
                        ),
                      ),
                    ),
                  ],
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
