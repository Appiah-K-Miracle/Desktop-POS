import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubHeader extends StatefulWidget {
  const SubHeader({super.key, required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  State<SubHeader> createState() => _SubHeaderState();
}

class _SubHeaderState extends State<SubHeader> {
  Color colorContainer = const Color(0xff2a3243);
  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Ink(
          child: InkWell(
            onTap: (){
               setState(() {
              colorContainer = colorContainer == const Color(0xff2a3253) ? 
                     const Color(0xff2a3243): 
                    const Color(0xff2a3253);
            });
            },
            child: Container(
              width: 150,
              decoration: BoxDecoration(
                 
                borderRadius: BorderRadius.circular(5),
                color: colorContainer,
              ),
              child: Row(
                children: [
                 Icon(widget.icon,
                 color: const Color(0xff838c9e),
                 ),
                 const SizedBox(
                    width: 5,
                  ),
                  Text(
                    widget.text,
                    style: GoogleFonts.poppins(color: const Color(0xff838c9e)),
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
