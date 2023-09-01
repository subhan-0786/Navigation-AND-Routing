import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nav_and_routing/utils/routes_name.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Practice'),
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
                Navigator.pushNamed(context, RouteName.ScreenTwo,
                    arguments: {'name': 'SUBHAN-ALI'});
              },
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 224, 195, 108),
                ),
                height: 40,
                width: double.infinity,
                child: Center(
                  child: Text(
                    "Screen One",
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
