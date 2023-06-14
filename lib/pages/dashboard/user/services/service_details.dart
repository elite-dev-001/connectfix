import 'package:connect_fix/pages/dashboard/user/booking/booking_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../components/misc/spacer.dart';

class ServiceDetails extends StatelessWidget {
  const ServiceDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/detail_2.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 21.w, vertical: 10.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ahmad Usman",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFF333030),
                      ),
                    ),
                    Text(
                      "Plumber",
                      style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF333030),
                      ),
                    ),
                    VSpace(2.w),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_sharp,
                          size: 12,
                        ),
                        Expanded(
                          child: Text(
                            "Rivers state, Obio Akpor, Mercyland",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF7E7B7B),
                            ),
                          ),
                        )
                      ],
                    ),
                    VSpace(14.w),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 140.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Jobs",
                                    style: TextStyle(
                                      fontSize: 8.sp,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xFF333030),
                                    ),
                                  ),
                                  Text(
                                    "100",
                                    style: TextStyle(
                                      fontSize: 8.sp,
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xFF333030),
                                    ),
                                  ),
                                ],
                              ),
                              // HSpace(31.w),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Rating",
                                    style: TextStyle(
                                      fontSize: 8.sp,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xFF333030),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        size: 8,
                                      ),
                                      Text(
                                        "4.0",
                                        style: TextStyle(
                                          fontSize: 8.sp,
                                          fontWeight: FontWeight.w600,
                                          color: const Color(0xFF333030),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Rate",
                                    style: TextStyle(
                                      fontSize: 8.sp,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xFF333030),
                                    ),
                                  ),
                                  Text(
                                    "\$15/hr",
                                    style: TextStyle(
                                      fontSize: 8.sp,
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xFF333030),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "All reviews",
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF333030),
                          ),
                        )
                      ],
                    ),
                    VSpace(31.w),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur"
                      "adipiscing elit. Faucibus enim tellus ut mauris"
                      "tristique ut odio massa. Vestibulum egestas fringilla et"
                      "orci. Magna eget se eu vel vitae mauris eget. Pulvinar"
                      "maecenas aliquet scelerisque aliquam a iaculis.Lorem "
                      "ipsum dolor sit amet, consectetur adipiscing elit. "
                      "Faucibus enim tellus ut mauris tristique ut odio"
                      "massa. Vestibulum egestas fringilla et orci. "
                      "Magna eget sed eu vel vitae mauris eget. Pulvinar "
                      "maecenas aliquet scelerisque aliquam a iaculis.",
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF565050),
                      ),
                    ),
                    VSpace(17.w),
                    Text(
                      "What our service include?",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFF333030),
                      ),
                    ),
                    VSpace(17.w),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Image.asset("assets/images/detail_1.png"),
                        HSpace(7.w),
                        Expanded(
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur "
                            "adipiscing elit. Faucibus enim tellus ut mauris"
                            "tristique ut odio massa. Vestibulum egestas "
                            "fringilla et orci. Magna eget se eu vel "
                            "vitae mauris eget. Pulvinar maecenas aliquet "
                            "scelerisque aliquam a iaculis.Lorem ",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF565050),
                            ),
                          ),
                        )
                      ],
                    ),
                    VSpace(25.w),
                    GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BookingDetails(),
                        ),
                      ),
                      child: Container(
                        height: 40.w,
                        decoration: BoxDecoration(
                          color: const Color(0xFF6169D2),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "Book now",
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
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
