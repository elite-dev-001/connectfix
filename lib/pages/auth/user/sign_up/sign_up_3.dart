import 'package:connect_fix/components/misc/spacer.dart';
import 'package:connect_fix/pages/auth/user/sign_up/sign_up_4.dart';
import 'package:connect_fix/pages/auth/user/sign_up/terms.dart';
import 'package:connect_fix/pages/auth/widgets/auth_btn.dart';
import 'package:connect_fix/pages/auth/widgets/auth_form.dart';
import 'package:connect_fix/pages/auth/widgets/auth_upload.dart';
import 'package:connect_fix/pages/dashboard/blocs/user_blocs.dart';
import 'package:connect_fix/pages/dashboard/blocs/user_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUp3 extends StatelessWidget {
  const SignUp3({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBlocs, UserStates>(builder: (context, state) {
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
                  AuthForm(
                      label: state.userType == "provider"
                          ? "Guarantor/Surety Phone Number 2"
                          : "Referee name 1"),
                  AuthForm(
                      label: state.userType == "provider"
                          ? "Profession"
                          : "Referee Business name 1"),
                  AuthForm(
                      label: state.userType == "provider"
                          ? "Business Address"
                          : "Referee Phone number"),
                  VSpace(16.w),
                  if (state.userType == "user")
                    const AuthUpload(
                      text: "Upload profile picture",
                    ),
                  if (state.userType == "user") VSpace(26.w),
                  AuthForm(
                    label: state.userType == "provider"
                        ? "Business State"
                        : "Password",
                    isPassword: true,
                  ),
                  AuthForm(
                    label: state.userType == "provider"
                        ? "Business LGA"
                        : "Confirm Password",
                    isPassword: true,
                  ),
                  if (state.userType == "provider")
                    const AuthForm(label: "Business Town/Area"),
                  if (state.userType == "provider")
                    const AuthUpload(
                      text: "Upload profile picture",
                    ),
                  if (state.userType == "provider") VSpace(26.w),
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
                              builder: (context) => state.userType == "user"
                                  ? const Terms()
                                  : const SignUp4(),
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
    });
  }
}
