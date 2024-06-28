import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sidebarx/sidebarx.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({super.key});

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return SidebarX(
      headerBuilder: (context, extended) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 40),
          child: Column(
            children: [
              CircleAvatar(
                radius: 30,
              )
            ],
          ),
        );
      },
      controller: SidebarXController(selectedIndex: 0, extended: true),
      theme: SidebarXTheme(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: const Color(0xff2a3243),
            borderRadius: BorderRadius.circular(20),
          ),
          textStyle: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w300,
            color: const Color(0xff838c9e),
          ),
          // itemMargin: EdgeInsets.symmetric(horizontal: 10),
          itemTextPadding: const EdgeInsets.symmetric(horizontal: 20),
          iconTheme: const IconThemeData(color: Color(0xff838c9e)),
          selectedItemTextPadding: const EdgeInsets.symmetric(horizontal: 20)),
      extendedTheme: SidebarXTheme(
          width: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0),
            color: const Color(0xff2a3243),
          )),
      items: const [
        SidebarXItem(
          icon: Icons.space_dashboard,
          label: 'Dashboard',
        ),
        SidebarXItem(icon: Icons.area_chart_rounded, label: 'Reporting'),
        SidebarXItem(
          icon: Icons.transfer_within_a_station,
          label: 'Transaction',
        ),
        SidebarXItem(
          icon: Icons.production_quantity_limits,
          label: 'Menu',
        ),
      ],
      footerItems: const [
        SidebarXItem(
          icon: Icons.notification_add,
          label: 'Notification',
        ),
        SidebarXItem(
          icon: Icons.settings,
          label: 'Settings',
        ),
        SidebarXItem(
          icon: Icons.help,
          label: 'Help & Support',
        ),
      ],
    );
  }
}
