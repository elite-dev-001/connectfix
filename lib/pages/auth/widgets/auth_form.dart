import 'package:connect_fix/components/misc/spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthForm extends StatelessWidget {
  const AuthForm({
    super.key,
    required this.label,
    this.isPassword = false,
    this.drop = false,
  });
  final String label;
  final bool isPassword;
  final bool drop;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w600,
            color: const Color(0xFF565050),
          ),
        ),
        VSpace(8.w),
        SizedBox(
          height: 50.w,
          child: TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color(0xFF7E7B7B),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              suffixIcon: isPassword
                  ? const Icon(Icons.visibility_off)
                  : drop
                      ? const Icon(Icons.keyboard_arrow_down_rounded)
                      : null,
            ),
          ),
        ),
        VSpace(10.w),
      ],
    );
  }
}
