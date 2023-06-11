import 'package:connect_fix/components/misc/spacer.dart';
import 'package:connect_fix/pages/dashboard/user/widgets/balance.dart';
import 'package:connect_fix/pages/dashboard/user/widgets/categories.dart';
import 'package:connect_fix/pages/dashboard/user/widgets/header.dart';
import 'package:connect_fix/pages/dashboard/user/widgets/recommended.dart';
import 'package:connect_fix/pages/dashboard/user/widgets/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                VSpace(69.w),
                const Header(),
                VSpace(20.w),
                const Balance(),
                VSpace(39.w),
                const Search(),
                VSpace(19.w),
                const Categories(),
                const Recommended()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
