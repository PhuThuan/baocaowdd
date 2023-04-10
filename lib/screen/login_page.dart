import 'package:bao_cao/helper/helper_fuction.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:bao_cao/comm/button_page.dart';
import 'package:bao_cao/comm/text_form_field.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool loading = false;
  final GlobalKey<FormState> globalKey1 = GlobalKey<FormState>();

  TextEditingController user = TextEditingController();

  TextEditingController password = TextEditingController();
  late UserCredential userCredential;

  Future loginAuth() async {
    try {
      userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: user.text, password: password.text);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        alertDialog(context, 'Tài khoản không tồn tại');
      } else if (e.code == 'wrong-password') {
        alertDialog(context, 'Không đúng mật khẩu');
      } else {
        alertDialog(context, 'Thành công');
      }
    }
  }

  void validation() {
    if (globalKey1.currentState!.validate()) {
      loginAuth();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EASY SHOP'),
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),
      body: Form(
        key: globalKey1,
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 80,
                ),
                const Text(
                  "Đăng Nhập",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 70,
                      fontWeight: FontWeight.bold),
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    TextFormFieldLogIn(
                      controller: user,
                      hintname: 'Username',
                      icon: Icons.person,
                      inputType: TextInputType.name,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextFormFieldLogIn(
                      controller: password,
                      hintname: 'Password',
                      icon: Icons.lock,
                      isobscureText: true,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: 240,
                  child: ButtonPage(
                    title: 'Đăng Nhập',
                    colorBotton: Colors.red,
                    colorText: Colors.white,
                    colorBorder: Colors.white,
                    Onpressed: validation,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'New user?',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      'Register now.',
                      style: TextStyle(color: Colors.red),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
