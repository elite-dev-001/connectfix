import 'package:connect_fix/components/misc/spacer.dart';
import 'package:connect_fix/pages/auth/user/sign_in.dart';
// import 'package:connect_fix/pages/auth/user/sign_in.dart';
import 'package:connect_fix/pages/auth/user/sign_up/sign_up.dart';
import 'package:connect_fix/pages/auth/widgets/auth_btn.dart';
import 'package:connect_fix/pages/dashboard/blocs/user_blocs.dart';
import 'package:connect_fix/pages/dashboard/blocs/user_events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class Auth extends StatelessWidget {
  const Auth({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
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
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              VSpace(100.w),
              CircleAvatar(
                radius: 37.5,
                backgroundColor: const Color(0xFF6169D2),
                child: SvgPicture.asset(
                  "assets/icons/fi_giver.svg",
                  colorFilter:
                      const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                ),
              ),
              VSpace(25.w),
              Text(
                "Sign $text",
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w900,
                  color: const Color(0xFF333030),
                ),
              ),
              VSpace(67.sp),
              AuthBtn(
                text: "User",
                border: false,
                onTap: () {
                  context.read<UserBlocs>().add(const UserTypeEvent("user"));
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          text == "in" ? const SignIn() : const SignUp(),
                    ),
                  );
                },
              ),
              VSpace(21.sp),
              AuthBtn(
                text: "Service Provider",
                border: true,
                onTap: () {
                  context
                      .read<UserBlocs>()
                      .add(const UserTypeEvent("provider"));
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          text == "in" ? const SignIn() : const SignUp(),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
