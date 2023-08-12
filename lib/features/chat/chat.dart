import 'package:buso/theme/colors.dart';
import 'package:buso/theme/size.dart';
import 'package:buso/widgets/list_chat/list_chat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Center(
                    child: Text(
                      'Message',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Center(
                  child: Image.asset(
                    'assets/images/line.png',
                    width: 140,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 45,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search',
                            contentPadding:
                                const EdgeInsets.fromLTRB(16, 0, 16, 16),
                            border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  width: 1.5,
                                  color: Color(ColorThemeBuso.brown),
                                ),
                                borderRadius: BorderRadius.circular(
                                    BorderRadiusBuso.value)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                width: 1.5,
                                color: Color(ColorThemeBuso.brown),
                              ),
                              borderRadius:
                                  BorderRadius.circular(BorderRadiusBuso.value),
                            ),
                          ),
                          cursorColor: const Color(ColorThemeBuso.primary),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    SizedBox(
                      height: 45,
                      width: 45,
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          foregroundColor: const Color(ColorThemeBuso.brown),
                          padding: const EdgeInsets.all(0),
                          side: const BorderSide(
                            width: 1.5,
                            color: Color(ColorThemeBuso.brown),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(BorderRadiusBuso.value),
                          ),
                        ),
                        child: SvgPicture.asset(
                          'assets/icons/Chat_plus.svg',
                          color: const Color(ColorThemeBuso.brown),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                const ListChat()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
