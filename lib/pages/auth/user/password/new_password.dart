import 'package:connect_fix/components/misc/spacer.dart';
import 'package:connect_fix/pages/auth/user/password/auth_success.dart';
import 'package:connect_fix/pages/auth/widgets/auth_btn.dart';
import 'package:connect_fix/pages/auth/widgets/auth_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

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
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              VSpace(96.w),
              Text(
                "Create New Password",
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
                  "Please enter your new password",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF565050),
                  ),
                ),
              ),
              VSpace(41.w),
              const AuthForm(
                label: "New Password",
                isPassword: true,
              ),
              const AuthForm(
                label: "Confirm New Password",
                isPassword: true,
              ),
              VSpace(27.w),
              AuthBtn(
                text: "Confirm",
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AuthSuccess(),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
