import 'package:buso/features/chat/chat.dart';
import 'package:buso/features/home/home.dart';
import 'package:buso/features/noti/noti.dart';
import 'package:buso/features/user/user.dart';
import 'package:buso/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  bool _pressCreate = false;

  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    Chat(),
    User(),
    Noti(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, -15),
              blurRadius: 20,
              color: const Color(0xFF000000).withOpacity(.04),
            ),
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 0;
                    });
                  },
                  icon: SvgPicture.asset(
                    'assets/icons/Home.svg',
                    // ignore: deprecated_member_use
                    color: Color(
                      _selectedIndex == 0
                          ? ColorThemeBuso.primary
                          : ColorThemeBuso.brown,
                    ),
                    width: 30,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 1;
                    });
                  },
                  icon: SvgPicture.asset(
                    'assets/icons/comment.svg',
                    // ignore: deprecated_member_use
                    color: Color(
                      _selectedIndex == 1
                          ? ColorThemeBuso.primary
                          : ColorThemeBuso.brown,
                    ),
                    width: 30,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 2;
                    });
                  },
                  icon: SvgPicture.asset(
                    'assets/icons/User_alt.svg',
                    // ignore: deprecated_member_use
                    color: Color(
                      _selectedIndex == 2
                          ? ColorThemeBuso.primary
                          : ColorThemeBuso.brown,
                    ),
                    width: 30,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 3;
                    });
                  },
                  icon: SvgPicture.asset(
                    'assets/icons/Bell.svg',
                    // ignore: deprecated_member_use
                    color: Color(
                      _selectedIndex == 3
                          ? ColorThemeBuso.primary
                          : ColorThemeBuso.brown,
                    ),
                    width: 30,
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Color(ColorThemeBuso.primary),
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, _pressCreate ? .01 : .015)
                    ..rotateY(_pressCreate ? .1 : .2),
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        _pressCreate = true;
                      });
                      Future.delayed(const Duration(milliseconds: 150), () {
                        setState(() {
                          _pressCreate = false;
                        });
                      });
                    },
                    icon: SvgPicture.asset(
                      'assets/icons/Add_round.svg',
                      // ignore: deprecated_member_use
                      color: Colors.white,
                      width: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
