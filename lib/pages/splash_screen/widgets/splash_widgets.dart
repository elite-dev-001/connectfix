import 'package:connect_fix/pages/auth/auth.dart';
import 'package:flutter/material.dart';

class SplashButton extends StatelessWidget {
  const SplashButton({super.key, this.text = "Next", this.onTap});
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 19),
        margin: const EdgeInsets.symmetric(horizontal: 18),
        decoration: BoxDecoration(
            color: const Color(0xFF6169D2),
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(offset: Offset(0, 4), spreadRadius: 0, blurRadius: 4)
            ]),
        alignment: Alignment.center,
        child: Text(
          text,
          style: const TextStyle(
              fontSize: 18, fontWeight: FontWeight.w700, color: Colors.white),
        ),
      ),
    );
  }
}

class SplashIndicator extends StatelessWidget {
  const SplashIndicator({super.key, required this.fill});
  final bool fill;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      height: 6,
      width: 56,
      decoration: BoxDecoration(
          color: Color(fill ? 0xFFFFFFFF : 0xFF7E7B7B),
          borderRadius: BorderRadius.circular(10)),
    );
  }
}

class ColumnBtn extends StatelessWidget {
  const ColumnBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SplashButton(
          text: "Sign In",
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Auth(text: "in"),
            ),
          ),
        ),
        const SizedBox(height: 16),
        GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Auth(text: "up"),
            ),
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 19),
            margin: const EdgeInsets.symmetric(horizontal: 18),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.white),
            ),
            alignment: Alignment.center,
            child: const Text(
              "Create an Account",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}




/**Positioned(
              top: 20,
              left: 20,
              child: Text(
                'Static Text',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            Positioned(
              bottom: 20,
              right: 20,
              child: ElevatedButton(
                onPressed: () {
                  // Button action
                },
                child: Text('Static Button'),
              ),
            ), */

            /**Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/images/logo.png"),
                    Column(
                      children: [
                        Text(
                          index != 2 ? title[index] : "",
                          style: const TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 24,
                              color: Color(0xFFFFFFFF)),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        SizedBox(
                          width: 201,
                          child: Text(
                            index != 2 ? subtitle[index] : "",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Color(0xFFFFFFFF)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 60.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: title
                                .map((e) =>
                                    SplashIndicator(fill: e == title[index]))
                                .toList(),
                          ),
                        ),
                        const SplashButton()
                      ],
                    )
                  ],
                ), */