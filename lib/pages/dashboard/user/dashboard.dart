import 'package:connect_fix/components/misc/spacer.dart';
import 'package:connect_fix/pages/dashboard/user/widgets/activate.dart';
import 'package:connect_fix/pages/dashboard/user/widgets/balance.dart';
import 'package:connect_fix/pages/dashboard/user/widgets/categories.dart';
import 'package:connect_fix/pages/dashboard/user/widgets/header.dart';
import 'package:connect_fix/pages/dashboard/user/widgets/recommended.dart';
import 'package:connect_fix/pages/dashboard/user/widgets/search.dart';
import 'package:connect_fix/pages/dashboard/user/widgets/upcoming.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../blocs/user_blocs.dart';
import '../blocs/user_states.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBlocs, UserStates>(builder: (context, state) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 0.w),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  VSpace(69.w),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: const Header(),
                  ),
                  VSpace(20.w),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: const Balance(),
                  ),
                  VSpace(39.w),
                  (state.userType == "user")
                      ? Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: const Search(),
                        )
                      : Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: const Activate(),
                        ),
                  VSpace(19.w),
                  if (state.userType == "user")
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: const Categories(),
                    ),
                  (state.userType == "user")
                      ? Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: const Recommended(),
                        )
                      : Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: const Upcoming(),
                        ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color(0xFF6169D2),
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icons/home.svg"),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icons/Calendar_Days.svg"),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icons/user.svg"),
              label: '',
            ),
          ],
        ),
      );
    });
  }
}
