import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:pos_app/app/components/contentheader.dart';
// import 'package:pos_app/app/components/items.dart';
import 'package:pos_app/app/components/menu.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff313a4e),
      body: Row(
        children: [
          MainMenu(),
          ContentHeader(),
          
        ],
      ),
    );
  }
}
