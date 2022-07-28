import 'package:doctor_appointment/constant/constant.dart';
import 'package:doctor_appointment/widgets/button.dart';
import 'package:doctor_appointment/widgets/checkbox.dart';
import 'package:doctor_appointment/widgets/rich_text.dart';
import 'package:doctor_appointment/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: SizedBox(
          height: size.height,
          child: Stack(
            children: [
              Positioned(
                top: size.height / 20,
                child: SizedBox(
                  width: size.width,
                  height: size.height,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.06),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 3,
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/icons/logo.png',
                                height: size.height / 8,
                                width: size.height / 8,
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              RichTextCustom(
                                headerText: 'Đăng',
                                footerText: 'Nhập',
                                fontSize: size.width / 15,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            'Đăng nhập hoặc Đăng ký để tiếp tục',
                            style: GoogleFonts.inter(
                              fontSize: size.width / 25,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Column(
                            children: [
                              TextFieldCustom(
                                hint: 'Nhập địa chỉ Email',
                                icon: Icons.mail_rounded,
                                size: size,
                              ),
                              const SizedBox(
                                height: 16.0,
                              ),
                              TextFieldCustom(
                                hint: 'Nhập mật khẩu',
                                icon: Icons.lock,
                                size: size,
                              ),
                              const SizedBox(
                                height: 16.0,
                              ),
                              CustomCheckBox(
                                size: size,
                                text: 'Nhớ tài khoản?',
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            children: [
                              CustomButton(
                                size: size,
                                text: 'Đăng nhập',
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Column(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
