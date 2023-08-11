import 'package:buso/theme/colors.dart';
import 'package:buso/theme/layout_size.dart';
import 'package:buso/theme/size.dart';
import 'package:buso/widgets/list_news/list_news.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: LayoutSize.paddingHorizontalScreen),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius:
                                BorderRadius.circular(BorderRadiusBuso.value),
                            child: Image.asset(
                              'assets/avatar/avatar2.avif',
                              width: 50,
                              height: 50,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Good morning',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(ColorThemeBuso.brown_70),
                                  ),
                                ),
                                Text(
                                  'Thân Thanh Duy',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      FloatingActionButton.small(
                        onPressed: () {},
                        backgroundColor: const Color(0xfff4f4f4),
                        elevation: 0,
                        child: SvgPicture.asset(
                          'assets/icons/Search.svg',
                          // ignore: deprecated_member_use
                          color: const Color(ColorThemeBuso.brown),
                        ),
                      )
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 32),
                    child: Center(
                      child: Text(
                        'New feed',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 32),
                    child: Center(
                      child: Image.asset(
                        'assets/images/line.png',
                        width: 140,
                      ),
                    ),
                  ),
                  const ListNews()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
