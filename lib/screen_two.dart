import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nav_and_routing/utils/routes_name.dart';

// ignore: must_be_immutable
class ScreenTwo extends StatefulWidget {
  dynamic data;
  ScreenTwo({super.key, required this.data});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.data['name']),
        centerTitle: true,
        backgroundColor: const Color(0xff764ABC),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, RouteName.ScreenThree);

                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const ScreenThree(
                //               name: 'Amjad Ali',
                //               num: 2,
                //  )));
              },
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 224, 195, 108),
                ),
                height: 40,
                width: double.infinity,
                child: Center(
                  child: Text(
                    "Screen Two",
                    style: GoogleFonts.crimsonPro(
                        fontSize: 25, color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
