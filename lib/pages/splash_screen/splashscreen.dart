import 'package:connect_fix/pages/splash_screen/widgets/splash_widgets.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // int index = 0;
  final List<String> images = [
    "assets/images/splash_1.png",
    "assets/images/splash_2.png",
    "assets/images/splash_3.png",
  ];
  final List<String> title = [
    "Quick Service Delivery",
    "Happy Home Service",
  ];
  final List<String> subtitle = [
    "Simplify your life with our home service solutions",
    "Transforming your home one service at a time"
  ];

  PageController _pageController = PageController();
  int _currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPageIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _handlePageChange(int pageIndex) {
    setState(() {
      _currentPageIndex = pageIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView.builder(
          controller: _pageController,
          itemCount: images.length,
          itemBuilder: (BuildContext context, int index) {
            index = index;
            return Container(
              padding: const EdgeInsets.fromLTRB(24, 41, 24, 40),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(images[index]),
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
          onPageChanged: _handlePageChange,
        ),
        Positioned(
          top: 50,
          left: 0,
          right: 0,
          child: Align(
            alignment: Alignment.topCenter,
            child: Image.asset("assets/images/logo.png"),
          ),
        ),
        Positioned(
          bottom: 50,
          left: 0,
          right: 0,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              children: [
                if (_currentPageIndex != 2)
                  Text(
                    title[_currentPageIndex],
                    style: const TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 24,
                        color: Color(0xFFFFFFFF)),
                  ),
                const SizedBox(
                  height: 4,
                ),
                if (_currentPageIndex != 2)
                  SizedBox(
                    width: 201,
                    child: Text(
                      subtitle[_currentPageIndex],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color(0xFFFFFFFF)),
                    ),
                  ),
                if (_currentPageIndex != 2)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 60.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: title
                          .map((e) => SplashIndicator(
                              fill: e == title[_currentPageIndex]))
                          .toList(),
                    ),
                  ),
                if (_currentPageIndex != 2)
                  SplashButton(
                    onTap: () {
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );
                    },
                  ),
                if (_currentPageIndex == 2) const ColumnBtn()
              ],
            ),
          ),
        )
      ],
    ));
  }
}
