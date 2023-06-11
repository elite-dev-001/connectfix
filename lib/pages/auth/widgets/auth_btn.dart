import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthBtn extends StatelessWidget {
  const AuthBtn({
    super.key,
    required this.text,
    this.border = false,
    this.onTap,
  });
  final String text;
  final bool border;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 19),
        // width: MediaQuery.of(context).size.width,
        // margin: const EdgeInsets.symmetric(horizontal: 18),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: border ? null : const Color(0xFF6169D2),
          border: border ? Border.all(color: const Color(0xFF7E7B7B)) : null,
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w700,
            color: border ? const Color(0xFF333030) : Colors.white,
          ),
        ),
      ),
    );
  }
}
