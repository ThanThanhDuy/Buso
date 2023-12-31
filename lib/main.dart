import 'package:buso/features/chat/chat_detail/chat_detail.dart';
import 'package:buso/features/main/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: MaterialApp(
        home: const MainScreen(),
        theme: ThemeData(
          fontFamily: 'Poppins',
        ),
        routes: <String, WidgetBuilder>{
          '/chat_detail': (context) => const ChatDetail(),
          '/main_screen': (context) => const MainScreen(),
        },
        debugShowCheckedModeBanner: false,
      ),
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
    );
  }
}
