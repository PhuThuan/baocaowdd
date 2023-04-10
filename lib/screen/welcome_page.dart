import 'package:bao_cao/comm/button_page.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: Container(
            child: Center(
              child: Image.asset("assets/images/logo.png"),
            ),
          ),
        ),
        Expanded(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  "welcome to taste",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text("Chào mừng bạn đến với shop của chúng tôi"),
                const SizedBox(
                  height: 15,
                ),
                ButtonPage(
                  title: 'đăng nhập',
                  colorBotton: Colors.green,
                  colorText: Colors.white,
                  colorBorder: Colors.green,
                  Onpressed: () {},
                ),
                const SizedBox(
                  height: 15,
                ),
                ButtonPage(
                  title: 'đăng ký',
                  colorBotton: Colors.white,
                  colorText: Colors.green,
                  colorBorder: Colors.white,
                  Onpressed: () {},
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
