import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemsLog extends StatefulWidget {
  const ItemsLog({super.key});

  @override
  State<ItemsLog> createState() => _ItemsLogState();
}

class _ItemsLogState extends State<ItemsLog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Items',
           style: GoogleFonts.poppins(color: const Color(0xff838c9e)),
          ),
        ],
      ),
    );
  }
}