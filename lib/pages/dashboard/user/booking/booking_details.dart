import 'package:connect_fix/components/misc/spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class BookingDetails extends StatelessWidget {
  const BookingDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final dates = [
      "Mar\n01\nMon",
      "Mar\n02\nTues",
      "Mar\n03\nWed",
      "Mar\n04\nThurs",
      "Mar\n05\nFri",
      "Mar\n06\nSat",
      "Mar\n07\nSun",
      "Mar\n08\nMon",
      "Mar\n09\nTues",
      "Mar\n10\nWed",
      "Mar\n11\nThurs",
      "Mar\n12\nFri",
      "Mar\n13\nSat",
      "Mar\n14\nSun",
      "Mar\n15\nMon",
      "Mar\n16\nTues",
    ];

    final times = [
      "06:00 AM",
      "07:00 AM",
      "08:00 AM",
      "09:00 AM",
      "10:00 AM",
      "11:00 AM",
      "12:00 PM",
      "01:00 PM",
      "02:00 PM",
      "03:00 PM",
      "04:00 PM",
      "05:00 PM",
    ];

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
          "Booking Details",
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VSpace(15.w),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Service date",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF565050),
                    ),
                  ),
                  Text(
                    "January, 2023",
                    style: TextStyle(
                      fontSize: 8.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF565050),
                    ),
                  ),
                ],
              ),
            ),
            VSpace(19.w),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: dates.map((e) => serviceDate(e)).toList(),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  VSpace(41.w),
                  Divider(
                    height: 2.w,
                    color: const Color(0xFFD9D9D9),
                  ),
                  VSpace(16.w),
                  Text(
                    'Select Start Time',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF565050),
                    ),
                  ),
                  const VSpace(15),
                  SizedBox(
                    height: 200.w,
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 29,
                              mainAxisSpacing: 16,
                              childAspectRatio: 1 / 0.4),
                      itemCount: times.length,
                      itemBuilder: (BuildContext context, int index) {
                        return startTime(times[index]);
                      },
                      // children: times.map((e) => startTime(e)).toList(),
                    ),
                  ),
                  VSpace(31.w),
                  Text(
                    "Select Address",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF565050),
                    ),
                  ),
                  VSpace(20.w),
                  Container(
                    padding: EdgeInsets.fromLTRB(31.w, 11.w, 0, 18.w),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: const Color(0xFF5e9DE7),
                        ),
                        borderRadius: BorderRadius.circular(5.w),
                        boxShadow: [
                          BoxShadow(
                              offset: const Offset(0, 4),
                              blurRadius: 4,
                              color: Colors.black.withOpacity(0.25))
                        ]),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5.w),
                          width: 30.w,
                          height: 30.w,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xFF6169D2)),
                          child: SvgPicture.asset("assets/icons/home.svg"),
                        ),
                        HSpace(34.w),
                        Expanded(
                          child: Text(
                            "Mercyland, Obio Akpor Port Harcourt",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF565050),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  VSpace(14.w),
                  Container(
                    padding: EdgeInsets.fromLTRB(31.w, 11.w, 0, 18.w),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.w),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 4),
                          blurRadius: 4,
                          color: Colors.black.withOpacity(0.25),
                        )
                      ],
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5.w),
                          width: 30.w,
                          height: 30.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color(0xFFFFFFFF),
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(0, 4),
                                blurRadius: 4,
                                color: Colors.black.withOpacity(0.25),
                              )
                            ],
                          ),
                          child: SvgPicture.asset("assets/icons/Suitcase.svg"),
                        ),
                        HSpace(34.w),
                        Expanded(
                          child: Text(
                            "NTA Road Mgbuoba, Port Harcourt",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF565050),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  VSpace(32.w),
                  Container(
                    height: 40.w,
                    decoration: BoxDecoration(
                      color: const Color(0xFF6169D2),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Proceed",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                  VSpace(93.w)
                ],
              ),
            ),
          ],
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

  Widget startTime(String time) {
    return Container(
      height: 21.w,
      // padding: EdgeInsets.fromLTRB(31.w, 8.w, 32.w, 11.w),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFF7E7B7B),
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      alignment: Alignment.center,
      child: Text(
        time,
        style: TextStyle(
          fontSize: 10.sp,
          fontWeight: FontWeight.w400,
          color: const Color(0xFF333030),
        ),
      ),
    );
  }

  Widget serviceDate(String date, [Color? color]) {
    return Container(
      margin: EdgeInsets.only(right: 11.w),
      height: 70.w,
      width: 70.w,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: const Color(0xFF7E7B7B),
            width: 0.5.w,
          ),
          color: color),
      alignment: Alignment.center,
      child: Text(
        date,
        style: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w600,
          color: Color(color == null ? 0xFF565050 : 0xFFFFFFFF),
        ),
      ),
    );
  }
}
