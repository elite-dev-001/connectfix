import 'package:connect_fix/components/misc/spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "What services do you need?",
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
            color: const Color(0xFF333030),
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
                hintText: "Search",
                prefixIcon: const Icon(Icons.search)),
          ),
        ),
        VSpace(10.w),
      ],
    );
  }
}
