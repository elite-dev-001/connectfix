import 'package:connect_fix/components/misc/spacer.dart';
import 'package:connect_fix/pages/auth/user/sign_up/sign_up_3.dart';
import 'package:connect_fix/pages/auth/widgets/auth_btn.dart';
import 'package:connect_fix/pages/auth/widgets/auth_form.dart';
import 'package:connect_fix/pages/dashboard/blocs/user_blocs.dart';
import 'package:connect_fix/pages/dashboard/blocs/user_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUp2 extends StatelessWidget {
  const SignUp2({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBlocs, UserStates>(
      builder: ((context, state) {
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
                    AuthForm(
                      label: state.userType == "provider"
                          ? "Phone Number"
                          : "Resident State",
                      drop: true,
                    ),
                    AuthForm(
                      label: state.userType == "provider"
                          ? "Alternate Phone Number (optional)"
                          : "Resident LGA",
                      drop: true,
                    ),
                    AuthForm(
                        label: state.userType == "provider"
                            ? "Guarantor/Surety Full name 1"
                            : "Resident Town/Area"),
                    AuthForm(
                        label: state.userType == "provider"
                            ? "Guarantor/Business Address 1"
                            : "Business Address"),
                    AuthForm(
                        label: state.userType == "provider"
                            ? "Guarantor/Surety Phone Number 1"
                            : "Phone Number"),
                    AuthForm(
                        label: state.userType == "provider"
                            ? "Guaranty/Surety Full name 2"
                            : "Alternate Phone Number (optional)"),
                    if (state.userType == "provider")
                      const AuthForm(label: "Guarantor/Business Address 2"),
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
                              border:
                                  Border.all(color: const Color(0xFF7E7B7B))),
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
      }),
    );
  }
}
