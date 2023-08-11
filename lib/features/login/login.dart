import 'package:buso/theme/colors.dart';
import 'package:buso/theme/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool visPassowd = false;

  onChangePassword() {
    setState(() {
      visPassowd = !visPassowd;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Buso',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 32,
                      color: Color(ColorThemeBuso.brown),
                    ),
                  ),
                  Image.asset(
                    'assets/images/line.png',
                    width: 170,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 32),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: CupertinoTextField(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      cursorColor: const Color(ColorThemeBuso.primary),
                      placeholder: 'Username',
                      style: const TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(ColorThemeBuso.brown),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.5,
                          color: const Color(ColorThemeBuso.brown),
                        ),
                        borderRadius:
                            BorderRadius.circular(BorderRadiusBuso.value),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: CupertinoTextField(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      cursorColor: const Color(ColorThemeBuso.primary),
                      obscureText: !visPassowd,
                      suffix: Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: GestureDetector(
                          onTap: onChangePassword,
                          child: Icon(
                            !visPassowd
                                ? Icons.visibility
                                : Icons.visibility_off,
                            size: 20,
                          ),
                        ),
                      ),
                      placeholder: 'Password',
                      style: const TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(ColorThemeBuso.brown),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.5,
                          color: const Color(ColorThemeBuso.brown),
                        ),
                        borderRadius:
                            BorderRadius.circular(BorderRadiusBuso.value),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        'Recovery password',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: CupertinoButton(
                      onPressed: () {},
                      borderRadius:
                          BorderRadius.circular(BorderRadiusBuso.value),
                      color: const Color(ColorThemeBuso.primary),
                      pressedOpacity: 0.7,
                      child: const Text(
                        'Sign In',
                        style: TextStyle(fontSize: 20, fontFamily: 'Poppins'),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          height: 3,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colors.white,
                                  Colors.black26,
                                ]),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(100),
                              bottomLeft: Radius.circular(100),
                              topRight: Radius.circular(100),
                              bottomRight: Radius.circular(100),
                            ),
                          ),
                        ),
                      ),
                      const Flexible(
                        flex: 2,
                        child: Text(
                          'Or countinute with',
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          height: 3,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.centerRight,
                                end: Alignment.centerLeft,
                                colors: [
                                  Colors.white,
                                  Colors.black26,
                                ]),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(100),
                              bottomLeft: Radius.circular(100),
                              topRight: Radius.circular(100),
                              bottomRight: Radius.circular(100),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          foregroundColor: const Color(ColorThemeBuso.primary),
                          side: const BorderSide(
                            width: 1.5,
                            color: Color(ColorThemeBuso.brown),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(BorderRadiusBuso.value),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                          child: Image.asset(
                            'assets/images/logo-google.png',
                            width: 30,
                            height: 30,
                          ),
                        ),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          foregroundColor: const Color(ColorThemeBuso.primary),
                          side: const BorderSide(
                            width: 1.5,
                            color: Color(ColorThemeBuso.brown),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(BorderRadiusBuso.value),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                          child: Image.asset(
                            'assets/images/logo-apple.png',
                            width: 30,
                            height: 30,
                          ),
                        ),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          foregroundColor: const Color(ColorThemeBuso.primary),
                          side: const BorderSide(
                            width: 1.5,
                            color: Color(ColorThemeBuso.brown),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(BorderRadiusBuso.value),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(2, 10, 0, 10),
                          child: Image.asset(
                            'assets/images/logo-facebook.png',
                            width: 30,
                            height: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 40),
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Not a member? ',
                      style: const TextStyle(
                          color: Color(ColorThemeBuso.brown), fontSize: 14),
                      children: [
                        TextSpan(
                          text: 'Register now',
                          style: const TextStyle(
                              color: Color(ColorThemeBuso.primary),
                              decoration: TextDecoration.underline),
                          recognizer: TapGestureRecognizer()..onTap = () {},
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
