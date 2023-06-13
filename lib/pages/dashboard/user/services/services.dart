// import 'package:connect_fix/components/misc/spacer.dart';
import 'package:connect_fix/pages/dashboard/user/services/widgets/service_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({
    super.key,
    required this.text,
    required this.job,
    required this.services,
  });
  final String text;
  final String job;
  final List<Map<String, String>> services;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: const Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF565050),
          ),
        ),
        title: Text(
          "$text Services",
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w700,
            color: const Color(0xFF565050),
          ),
        ),
        centerTitle: true,
        actions: [
          Image.asset("assets/images/profile_pic.png"),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: services
                .map((e) => ServiceTab(
                      img: e["img"]!,
                      name: e["name"]!,
                      job: job,
                    ))
                .toList(),
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
  }
}
