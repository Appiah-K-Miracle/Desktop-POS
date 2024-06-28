import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pos_app/app/constants/colortheme.dart';
// import 'package:pos_app/app/components/items.dart';
import 'package:pos_app/app/subcomponents/categorysection.dart';

class ContentHeader extends StatelessWidget {
  const ContentHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Color(0xff313a4e),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                decoration: const BoxDecoration(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Choose Categories',
                            style: GoogleFonts.poppins(
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xff838c9e),
                            ),
                          ),
                          SizedBox(
                            width: 250,
                            height: 40,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color(0xff838c9e),
                                    // offset: const Offset(
                                    //   1.0,
                                    //   1.0,
                                    // ),
                                    blurRadius: 1.0,
                                    spreadRadius: 0.5,
                                  ), //BoxShadow
                                  BoxShadow(
                                    color: Color(0xff313a4e),
                                    offset: Offset(0.0, 0.0),
                                    blurRadius: 0.0,
                                    spreadRadius: 0.0,
                                  ), //
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'Search Menu',
                                    hintTextDirection: TextDirection.ltr,
                                    hintStyle: GoogleFonts.poppins(
                                        fontSize: 14,
                                        color: const Color(0xff838c9e),
                                        fontWeight: FontWeight.w500),
                                    icon: const Icon(
                                      Icons.search_outlined,
                                      color: Color(0xff838c9e),
                                      size: 18,
                                      textDirection: TextDirection.rtl,
                                    ),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 50.0),
                          child: Container(
                            width: double.infinity,
                            height: 40,
                            decoration: const BoxDecoration(color: Color(0xff2a3243)),
                            child: Container(
                              width: double.infinity,
                              height: 30,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: const [
                                  SubHeader(
                                    icon: Icons.all_inbox,
                                    text: 'All Products',
                                  ),
                                  SubHeader(
                                    icon: Icons.local_drink,
                                    text: 'Soft Drinks',
                                  ),
                                  SubHeader(
                                    icon: Icons.deck,
                                    text: 'Alcohol Drinks',
                                  ),
                                  SubHeader(
                                    icon: Icons.water_drop,
                                    text: 'Bottle Water',
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 50.0),
                          child: Text(
                            'Items',
                            style: GoogleFonts.poppins(
                              color: Color(0xff838c9e),
                              fontSize: 30,
                              fontWeight: FontWeight.w700
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Row(

                          children: [
                            Container(
                              width: 200,
                              height: 200,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1,
                                  color: whiteColor,
                                ),
                                borderRadius: BorderRadius.circular(20)
                              ),
                              child: Stack(
                                children: [
                                  // Image.asset("assets/images/malt.png")
                                ],
                              ),

                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(color: Color(0xff364055)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
