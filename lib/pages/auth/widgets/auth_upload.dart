import 'package:connect_fix/components/misc/spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthUpload extends StatelessWidget {
  const AuthUpload({
    super.key,
    this.text =
        "Upload a Valid NIN, Driver's License or International passport",
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 10.sp,
              fontWeight: FontWeight.w400,
              color: const Color(0xFF565050),
            ),
          ),
          VSpace(7.w),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(top: 22.5.w, bottom: 18.w),
            decoration: BoxDecoration(
                color: const Color(0xFFD9D9D9).withOpacity(0.5),
                borderRadius: BorderRadius.circular(8.23529)),
            child: Column(
              children: [
                const Icon(Icons.file_upload_outlined),
                VSpace(10.25.w),
                Text(
                  "Click to Upload",
                  style: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF7E7B7B),
                  ),
                ),
                VSpace(8.w),
                Text(
                  "Not above 200KB",
                  style: TextStyle(
                    fontSize: 6.59.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF7E7B7B),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
