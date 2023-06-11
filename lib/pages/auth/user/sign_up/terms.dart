import 'package:connect_fix/components/misc/spacer.dart';
import 'package:connect_fix/pages/auth/user/password/auth_success.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/auth_btn.dart';

class Terms extends StatelessWidget {
  const Terms({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                VSpace(100.w),
                Text(
                  "Terms and Condition",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF333030),
                  ),
                ),
                VSpace(33.w),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Faucibus enim tellus ut mauris tristique ut odio massa. Vestibulum egestas fringilla et orci. Magna eget se eu vel vitae mauris eget. Pulvinar maecenas aliquet scelerisque aliquam a iaculis.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Faucibus enim tellus ut mauris tristique ut odio massa. Vestibulum egestas fringilla et orci. Magna eget sed eu vel vitae mauris eget. Pulvinar maecenas aliquet scelerisque aliquam a iaculis.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Faucibus enim tellus ut mauris tristique ut odio massa. Vestibulum egestas fringilla et orci. Magna eget se eu vel vitae mauris eget. Pulvinar maecenas aliquet scelerisque aliquam a iaculis.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Faucibus enim tellus ut mauris tristique ut odio massa. Vestibulum egestas fringilla et orci. Magna eget sed eu vel vitae mauris eget. Pulvinar maecenas aliquet scelerisque aliquam a iaculis.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Faucibus enim tellus ut mauris tristique ut odio massa. Vestibulum egestas fringilla et orci. Magna eget se eu vel vitae mauris eget. Pulvinar maecenas aliquet scelerisque aliquam a iaculis.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Faucibus enim tellus ut mauris tristique ut odio massa. Vestibulum egestas fringilla et orci. Magna eget sed eu vel vitae mauris eget. Pulvinar maecenas aliquet scelerisque aliquam a iaculis.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Faucibus enim tellus ut mauris tristique ut odio massa. Vestibulum egestas fringilla et orci. Magna eget se eu vel vitae mauris eget. Pulvinar maecenas aliquet scelerisque aliquam a iaculis.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Faucibus enim tellus ut mauris tristique ut odio massa. Vestibulum egestas fringilla et orci. Magna eget sed eu vel vitae mauris eget. Pulvinar maecenas aliquet scelerisque aliquam a iaculis.",
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF565050),
                  ),
                ),
                VSpace(24.w),
                Row(
                  children: [
                    Container(
                      height: 15.w,
                      width: 15.w,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          border: Border.all(
                            color: const Color(0xFF7E7B7B),
                          )),
                    ),
                    HSpace(9.w),
                    Text(
                      "I agree to the terms and conditions",
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF7E7B7B),
                      ),
                    ),
                  ],
                ),
                VSpace(57.w),
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
                            builder: (context) => const AuthSuccess(),
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
